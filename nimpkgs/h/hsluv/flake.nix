{
  description = ''A port of HSLuv, a human friendly alternative to HSL.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hsluv-master".url = "path:./master";
  inputs."hsluv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hsluv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hsluv-1_0_0".url = "path:./1_0_0";
  inputs."hsluv-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hsluv-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
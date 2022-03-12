{
  description = ''C macro for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimish-master".url = "path:./master";
  inputs."nimish-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimish-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimish-v0_1_0".url = "path:./v0_1_0";
  inputs."nimish-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimish-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''String interning library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."names-master".url = "path:./master";
  inputs."names-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."names-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."names-v0_1_0".url = "path:./v0_1_0";
  inputs."names-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."names-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
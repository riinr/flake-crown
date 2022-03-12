{
  description = ''Nim's official stdlib extension'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fusion-master".url = "path:./master";
  inputs."fusion-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fusion-v1_0".url = "path:./v1_0";
  inputs."fusion-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fusion-v1_1".url = "path:./v1_1";
  inputs."fusion-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A Nim library to create and manage temporary directories.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tempdir-master".url = "path:./master";
  inputs."tempdir-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempdir-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempdir-v1_0_0".url = "path:./v1_0_0";
  inputs."tempdir-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempdir-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempdir-v1_0_1".url = "path:./v1_0_1";
  inputs."tempdir-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempdir-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
{
  description = ''Deal with Windows Registry from Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."winregistry-master".url = "path:./master";
  inputs."winregistry-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winregistry-v0_1_7".url = "path:./v0_1_7";
  inputs."winregistry-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winregistry-v0_1_8".url = "path:./v0_1_8";
  inputs."winregistry-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winregistry-v0_2_0".url = "path:./v0_2_0";
  inputs."winregistry-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winregistry-v0_2_1".url = "path:./v0_2_1";
  inputs."winregistry-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''subnet prints subnet mask in human readable.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."subnet-master".dir   = "master";
  inputs."subnet-master".owner = "nim-nix-pkgs";
  inputs."subnet-master".ref   = "master";
  inputs."subnet-master".repo  = "subnet";
  inputs."subnet-master".type  = "github";
  inputs."subnet-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subnet-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subnet-v1_0_0".dir   = "v1_0_0";
  inputs."subnet-v1_0_0".owner = "nim-nix-pkgs";
  inputs."subnet-v1_0_0".ref   = "master";
  inputs."subnet-v1_0_0".repo  = "subnet";
  inputs."subnet-v1_0_0".type  = "github";
  inputs."subnet-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subnet-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subnet-v1_0_1".dir   = "v1_0_1";
  inputs."subnet-v1_0_1".owner = "nim-nix-pkgs";
  inputs."subnet-v1_0_1".ref   = "master";
  inputs."subnet-v1_0_1".repo  = "subnet";
  inputs."subnet-v1_0_1".type  = "github";
  inputs."subnet-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subnet-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
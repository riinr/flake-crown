{
  description = ''Deal with Windows Registry from Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."winregistry-devel".dir   = "devel";
  inputs."winregistry-devel".owner = "nim-nix-pkgs";
  inputs."winregistry-devel".ref   = "master";
  inputs."winregistry-devel".repo  = "winregistry";
  inputs."winregistry-devel".type  = "github";
  inputs."winregistry-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winregistry-master".dir   = "master";
  inputs."winregistry-master".owner = "nim-nix-pkgs";
  inputs."winregistry-master".ref   = "master";
  inputs."winregistry-master".repo  = "winregistry";
  inputs."winregistry-master".type  = "github";
  inputs."winregistry-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winregistry-v0_1_7".dir   = "v0_1_7";
  inputs."winregistry-v0_1_7".owner = "nim-nix-pkgs";
  inputs."winregistry-v0_1_7".ref   = "master";
  inputs."winregistry-v0_1_7".repo  = "winregistry";
  inputs."winregistry-v0_1_7".type  = "github";
  inputs."winregistry-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winregistry-v0_1_8".dir   = "v0_1_8";
  inputs."winregistry-v0_1_8".owner = "nim-nix-pkgs";
  inputs."winregistry-v0_1_8".ref   = "master";
  inputs."winregistry-v0_1_8".repo  = "winregistry";
  inputs."winregistry-v0_1_8".type  = "github";
  inputs."winregistry-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winregistry-v0_2_0".dir   = "v0_2_0";
  inputs."winregistry-v0_2_0".owner = "nim-nix-pkgs";
  inputs."winregistry-v0_2_0".ref   = "master";
  inputs."winregistry-v0_2_0".repo  = "winregistry";
  inputs."winregistry-v0_2_0".type  = "github";
  inputs."winregistry-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winregistry-v0_2_1".dir   = "v0_2_1";
  inputs."winregistry-v0_2_1".owner = "nim-nix-pkgs";
  inputs."winregistry-v0_2_1".ref   = "master";
  inputs."winregistry-v0_2_1".repo  = "winregistry";
  inputs."winregistry-v0_2_1".type  = "github";
  inputs."winregistry-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winregistry-v1_0_0".dir   = "v1_0_0";
  inputs."winregistry-v1_0_0".owner = "nim-nix-pkgs";
  inputs."winregistry-v1_0_0".ref   = "master";
  inputs."winregistry-v1_0_0".repo  = "winregistry";
  inputs."winregistry-v1_0_0".type  = "github";
  inputs."winregistry-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winregistry-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
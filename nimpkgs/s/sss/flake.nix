{
  description = ''Shamir secret sharing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sss-master".dir   = "master";
  inputs."sss-master".owner = "nim-nix-pkgs";
  inputs."sss-master".ref   = "master";
  inputs."sss-master".repo  = "sss";
  inputs."sss-master".type  = "github";
  inputs."sss-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sss-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sss-0_3_0".dir   = "0_3_0";
  inputs."sss-0_3_0".owner = "nim-nix-pkgs";
  inputs."sss-0_3_0".ref   = "master";
  inputs."sss-0_3_0".repo  = "sss";
  inputs."sss-0_3_0".type  = "github";
  inputs."sss-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sss-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sss-0_3_1".dir   = "0_3_1";
  inputs."sss-0_3_1".owner = "nim-nix-pkgs";
  inputs."sss-0_3_1".ref   = "master";
  inputs."sss-0_3_1".repo  = "sss";
  inputs."sss-0_3_1".type  = "github";
  inputs."sss-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sss-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sss-0_3_2".dir   = "0_3_2";
  inputs."sss-0_3_2".owner = "nim-nix-pkgs";
  inputs."sss-0_3_2".ref   = "master";
  inputs."sss-0_3_2".repo  = "sss";
  inputs."sss-0_3_2".type  = "github";
  inputs."sss-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sss-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sss-v0_1_0".dir   = "v0_1_0";
  inputs."sss-v0_1_0".owner = "nim-nix-pkgs";
  inputs."sss-v0_1_0".ref   = "master";
  inputs."sss-v0_1_0".repo  = "sss";
  inputs."sss-v0_1_0".type  = "github";
  inputs."sss-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sss-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sss-v0_1_1".dir   = "v0_1_1";
  inputs."sss-v0_1_1".owner = "nim-nix-pkgs";
  inputs."sss-v0_1_1".ref   = "master";
  inputs."sss-v0_1_1".repo  = "sss";
  inputs."sss-v0_1_1".type  = "github";
  inputs."sss-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sss-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sss-v0_2_0".dir   = "v0_2_0";
  inputs."sss-v0_2_0".owner = "nim-nix-pkgs";
  inputs."sss-v0_2_0".ref   = "master";
  inputs."sss-v0_2_0".repo  = "sss";
  inputs."sss-v0_2_0".type  = "github";
  inputs."sss-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sss-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sss-v0_2_1".dir   = "v0_2_1";
  inputs."sss-v0_2_1".owner = "nim-nix-pkgs";
  inputs."sss-v0_2_1".ref   = "master";
  inputs."sss-v0_2_1".repo  = "sss";
  inputs."sss-v0_2_1".type  = "github";
  inputs."sss-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sss-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sss-v0_2_2".dir   = "v0_2_2";
  inputs."sss-v0_2_2".owner = "nim-nix-pkgs";
  inputs."sss-v0_2_2".ref   = "master";
  inputs."sss-v0_2_2".repo  = "sss";
  inputs."sss-v0_2_2".type  = "github";
  inputs."sss-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sss-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Small String Optimized (SSO) string implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ssostrings-master".dir   = "master";
  inputs."ssostrings-master".owner = "nim-nix-pkgs";
  inputs."ssostrings-master".ref   = "master";
  inputs."ssostrings-master".repo  = "ssostrings";
  inputs."ssostrings-master".type  = "github";
  inputs."ssostrings-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssostrings-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssostrings-v0_1_0".dir   = "v0_1_0";
  inputs."ssostrings-v0_1_0".owner = "nim-nix-pkgs";
  inputs."ssostrings-v0_1_0".ref   = "master";
  inputs."ssostrings-v0_1_0".repo  = "ssostrings";
  inputs."ssostrings-v0_1_0".type  = "github";
  inputs."ssostrings-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssostrings-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssostrings-v0_2_0".dir   = "v0_2_0";
  inputs."ssostrings-v0_2_0".owner = "nim-nix-pkgs";
  inputs."ssostrings-v0_2_0".ref   = "master";
  inputs."ssostrings-v0_2_0".repo  = "ssostrings";
  inputs."ssostrings-v0_2_0".type  = "github";
  inputs."ssostrings-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssostrings-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssostrings-v0_3_0".dir   = "v0_3_0";
  inputs."ssostrings-v0_3_0".owner = "nim-nix-pkgs";
  inputs."ssostrings-v0_3_0".ref   = "master";
  inputs."ssostrings-v0_3_0".repo  = "ssostrings";
  inputs."ssostrings-v0_3_0".type  = "github";
  inputs."ssostrings-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssostrings-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssostrings-v0_4_0".dir   = "v0_4_0";
  inputs."ssostrings-v0_4_0".owner = "nim-nix-pkgs";
  inputs."ssostrings-v0_4_0".ref   = "master";
  inputs."ssostrings-v0_4_0".repo  = "ssostrings";
  inputs."ssostrings-v0_4_0".type  = "github";
  inputs."ssostrings-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssostrings-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssostrings-v0_5_0".dir   = "v0_5_0";
  inputs."ssostrings-v0_5_0".owner = "nim-nix-pkgs";
  inputs."ssostrings-v0_5_0".ref   = "master";
  inputs."ssostrings-v0_5_0".repo  = "ssostrings";
  inputs."ssostrings-v0_5_0".type  = "github";
  inputs."ssostrings-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssostrings-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssostrings-v0_6_0".dir   = "v0_6_0";
  inputs."ssostrings-v0_6_0".owner = "nim-nix-pkgs";
  inputs."ssostrings-v0_6_0".ref   = "master";
  inputs."ssostrings-v0_6_0".repo  = "ssostrings";
  inputs."ssostrings-v0_6_0".type  = "github";
  inputs."ssostrings-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssostrings-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ssostrings-v0_6_1".dir   = "v0_6_1";
  inputs."ssostrings-v0_6_1".owner = "nim-nix-pkgs";
  inputs."ssostrings-v0_6_1".ref   = "master";
  inputs."ssostrings-v0_6_1".repo  = "ssostrings";
  inputs."ssostrings-v0_6_1".type  = "github";
  inputs."ssostrings-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ssostrings-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
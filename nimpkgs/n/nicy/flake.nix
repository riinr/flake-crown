{
  description = ''A nice and icy ZSH prompt in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nicy-master".dir   = "master";
  inputs."nicy-master".owner = "nim-nix-pkgs";
  inputs."nicy-master".ref   = "master";
  inputs."nicy-master".repo  = "nicy";
  inputs."nicy-master".type  = "github";
  inputs."nicy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v1_0_0".dir   = "v1_0_0";
  inputs."nicy-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nicy-v1_0_0".ref   = "master";
  inputs."nicy-v1_0_0".repo  = "nicy";
  inputs."nicy-v1_0_0".type  = "github";
  inputs."nicy-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_0_0".dir   = "v2_0_0";
  inputs."nicy-v2_0_0".owner = "nim-nix-pkgs";
  inputs."nicy-v2_0_0".ref   = "master";
  inputs."nicy-v2_0_0".repo  = "nicy";
  inputs."nicy-v2_0_0".type  = "github";
  inputs."nicy-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_1_0".dir   = "v2_1_0";
  inputs."nicy-v2_1_0".owner = "nim-nix-pkgs";
  inputs."nicy-v2_1_0".ref   = "master";
  inputs."nicy-v2_1_0".repo  = "nicy";
  inputs."nicy-v2_1_0".type  = "github";
  inputs."nicy-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_2_0".dir   = "v2_2_0";
  inputs."nicy-v2_2_0".owner = "nim-nix-pkgs";
  inputs."nicy-v2_2_0".ref   = "master";
  inputs."nicy-v2_2_0".repo  = "nicy";
  inputs."nicy-v2_2_0".type  = "github";
  inputs."nicy-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_3_0".dir   = "v2_3_0";
  inputs."nicy-v2_3_0".owner = "nim-nix-pkgs";
  inputs."nicy-v2_3_0".ref   = "master";
  inputs."nicy-v2_3_0".repo  = "nicy";
  inputs."nicy-v2_3_0".type  = "github";
  inputs."nicy-v2_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_4_0".dir   = "v2_4_0";
  inputs."nicy-v2_4_0".owner = "nim-nix-pkgs";
  inputs."nicy-v2_4_0".ref   = "master";
  inputs."nicy-v2_4_0".repo  = "nicy";
  inputs."nicy-v2_4_0".type  = "github";
  inputs."nicy-v2_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_4_1".dir   = "v2_4_1";
  inputs."nicy-v2_4_1".owner = "nim-nix-pkgs";
  inputs."nicy-v2_4_1".ref   = "master";
  inputs."nicy-v2_4_1".repo  = "nicy";
  inputs."nicy-v2_4_1".type  = "github";
  inputs."nicy-v2_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_4_2".dir   = "v2_4_2";
  inputs."nicy-v2_4_2".owner = "nim-nix-pkgs";
  inputs."nicy-v2_4_2".ref   = "master";
  inputs."nicy-v2_4_2".repo  = "nicy";
  inputs."nicy-v2_4_2".type  = "github";
  inputs."nicy-v2_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_5_0".dir   = "v2_5_0";
  inputs."nicy-v2_5_0".owner = "nim-nix-pkgs";
  inputs."nicy-v2_5_0".ref   = "master";
  inputs."nicy-v2_5_0".repo  = "nicy";
  inputs."nicy-v2_5_0".type  = "github";
  inputs."nicy-v2_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nicy-v2_5_1".dir   = "v2_5_1";
  inputs."nicy-v2_5_1".owner = "nim-nix-pkgs";
  inputs."nicy-v2_5_1".ref   = "master";
  inputs."nicy-v2_5_1".repo  = "nicy";
  inputs."nicy-v2_5_1".type  = "github";
  inputs."nicy-v2_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nicy-v2_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
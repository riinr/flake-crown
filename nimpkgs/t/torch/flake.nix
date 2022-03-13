{
  description = ''A nim flavor of pytorch'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."torch-master".dir   = "master";
  inputs."torch-master".owner = "nim-nix-pkgs";
  inputs."torch-master".ref   = "master";
  inputs."torch-master".repo  = "torch";
  inputs."torch-master".type  = "github";
  inputs."torch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_1".dir   = "v0_1_1";
  inputs."torch-v0_1_1".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_1".ref   = "master";
  inputs."torch-v0_1_1".repo  = "torch";
  inputs."torch-v0_1_1".type  = "github";
  inputs."torch-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_10".dir   = "v0_1_10";
  inputs."torch-v0_1_10".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_10".ref   = "master";
  inputs."torch-v0_1_10".repo  = "torch";
  inputs."torch-v0_1_10".type  = "github";
  inputs."torch-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_11".dir   = "v0_1_11";
  inputs."torch-v0_1_11".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_11".ref   = "master";
  inputs."torch-v0_1_11".repo  = "torch";
  inputs."torch-v0_1_11".type  = "github";
  inputs."torch-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_12".dir   = "v0_1_12";
  inputs."torch-v0_1_12".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_12".ref   = "master";
  inputs."torch-v0_1_12".repo  = "torch";
  inputs."torch-v0_1_12".type  = "github";
  inputs."torch-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_13".dir   = "v0_1_13";
  inputs."torch-v0_1_13".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_13".ref   = "master";
  inputs."torch-v0_1_13".repo  = "torch";
  inputs."torch-v0_1_13".type  = "github";
  inputs."torch-v0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_15".dir   = "v0_1_15";
  inputs."torch-v0_1_15".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_15".ref   = "master";
  inputs."torch-v0_1_15".repo  = "torch";
  inputs."torch-v0_1_15".type  = "github";
  inputs."torch-v0_1_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_16".dir   = "v0_1_16";
  inputs."torch-v0_1_16".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_16".ref   = "master";
  inputs."torch-v0_1_16".repo  = "torch";
  inputs."torch-v0_1_16".type  = "github";
  inputs."torch-v0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_17".dir   = "v0_1_17";
  inputs."torch-v0_1_17".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_17".ref   = "master";
  inputs."torch-v0_1_17".repo  = "torch";
  inputs."torch-v0_1_17".type  = "github";
  inputs."torch-v0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_18".dir   = "v0_1_18";
  inputs."torch-v0_1_18".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_18".ref   = "master";
  inputs."torch-v0_1_18".repo  = "torch";
  inputs."torch-v0_1_18".type  = "github";
  inputs."torch-v0_1_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_19".dir   = "v0_1_19";
  inputs."torch-v0_1_19".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_19".ref   = "master";
  inputs."torch-v0_1_19".repo  = "torch";
  inputs."torch-v0_1_19".type  = "github";
  inputs."torch-v0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_2".dir   = "v0_1_2";
  inputs."torch-v0_1_2".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_2".ref   = "master";
  inputs."torch-v0_1_2".repo  = "torch";
  inputs."torch-v0_1_2".type  = "github";
  inputs."torch-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_20".dir   = "v0_1_20";
  inputs."torch-v0_1_20".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_20".ref   = "master";
  inputs."torch-v0_1_20".repo  = "torch";
  inputs."torch-v0_1_20".type  = "github";
  inputs."torch-v0_1_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_21".dir   = "v0_1_21";
  inputs."torch-v0_1_21".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_21".ref   = "master";
  inputs."torch-v0_1_21".repo  = "torch";
  inputs."torch-v0_1_21".type  = "github";
  inputs."torch-v0_1_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_22".dir   = "v0_1_22";
  inputs."torch-v0_1_22".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_22".ref   = "master";
  inputs."torch-v0_1_22".repo  = "torch";
  inputs."torch-v0_1_22".type  = "github";
  inputs."torch-v0_1_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_23".dir   = "v0_1_23";
  inputs."torch-v0_1_23".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_23".ref   = "master";
  inputs."torch-v0_1_23".repo  = "torch";
  inputs."torch-v0_1_23".type  = "github";
  inputs."torch-v0_1_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_24".dir   = "v0_1_24";
  inputs."torch-v0_1_24".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_24".ref   = "master";
  inputs."torch-v0_1_24".repo  = "torch";
  inputs."torch-v0_1_24".type  = "github";
  inputs."torch-v0_1_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_3".dir   = "v0_1_3";
  inputs."torch-v0_1_3".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_3".ref   = "master";
  inputs."torch-v0_1_3".repo  = "torch";
  inputs."torch-v0_1_3".type  = "github";
  inputs."torch-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_4".dir   = "v0_1_4";
  inputs."torch-v0_1_4".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_4".ref   = "master";
  inputs."torch-v0_1_4".repo  = "torch";
  inputs."torch-v0_1_4".type  = "github";
  inputs."torch-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_5".dir   = "v0_1_5";
  inputs."torch-v0_1_5".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_5".ref   = "master";
  inputs."torch-v0_1_5".repo  = "torch";
  inputs."torch-v0_1_5".type  = "github";
  inputs."torch-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_6".dir   = "v0_1_6";
  inputs."torch-v0_1_6".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_6".ref   = "master";
  inputs."torch-v0_1_6".repo  = "torch";
  inputs."torch-v0_1_6".type  = "github";
  inputs."torch-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_8".dir   = "v0_1_8";
  inputs."torch-v0_1_8".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_8".ref   = "master";
  inputs."torch-v0_1_8".repo  = "torch";
  inputs."torch-v0_1_8".type  = "github";
  inputs."torch-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_1_9".dir   = "v0_1_9";
  inputs."torch-v0_1_9".owner = "nim-nix-pkgs";
  inputs."torch-v0_1_9".ref   = "master";
  inputs."torch-v0_1_9".repo  = "torch";
  inputs."torch-v0_1_9".type  = "github";
  inputs."torch-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_2_0".dir   = "v0_2_0";
  inputs."torch-v0_2_0".owner = "nim-nix-pkgs";
  inputs."torch-v0_2_0".ref   = "master";
  inputs."torch-v0_2_0".repo  = "torch";
  inputs."torch-v0_2_0".type  = "github";
  inputs."torch-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_2_1".dir   = "v0_2_1";
  inputs."torch-v0_2_1".owner = "nim-nix-pkgs";
  inputs."torch-v0_2_1".ref   = "master";
  inputs."torch-v0_2_1".repo  = "torch";
  inputs."torch-v0_2_1".type  = "github";
  inputs."torch-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_2_2".dir   = "v0_2_2";
  inputs."torch-v0_2_2".owner = "nim-nix-pkgs";
  inputs."torch-v0_2_2".ref   = "master";
  inputs."torch-v0_2_2".repo  = "torch";
  inputs."torch-v0_2_2".type  = "github";
  inputs."torch-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."torch-v0_2_3".dir   = "v0_2_3";
  inputs."torch-v0_2_3".owner = "nim-nix-pkgs";
  inputs."torch-v0_2_3".ref   = "master";
  inputs."torch-v0_2_3".repo  = "torch";
  inputs."torch-v0_2_3".type  = "github";
  inputs."torch-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torch-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
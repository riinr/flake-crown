{
  description = ''htslib wrapper for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hts-master".dir   = "master";
  inputs."hts-master".owner = "nim-nix-pkgs";
  inputs."hts-master".ref   = "master";
  inputs."hts-master".repo  = "hts";
  inputs."hts-master".type  = "github";
  inputs."hts-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_1_7".dir   = "v0_1_7";
  inputs."hts-v0_1_7".owner = "nim-nix-pkgs";
  inputs."hts-v0_1_7".ref   = "master";
  inputs."hts-v0_1_7".repo  = "hts";
  inputs."hts-v0_1_7".type  = "github";
  inputs."hts-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_1_8".dir   = "v0_1_8";
  inputs."hts-v0_1_8".owner = "nim-nix-pkgs";
  inputs."hts-v0_1_8".ref   = "master";
  inputs."hts-v0_1_8".repo  = "hts";
  inputs."hts-v0_1_8".type  = "github";
  inputs."hts-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_1_9".dir   = "v0_1_9";
  inputs."hts-v0_1_9".owner = "nim-nix-pkgs";
  inputs."hts-v0_1_9".ref   = "master";
  inputs."hts-v0_1_9".repo  = "hts";
  inputs."hts-v0_1_9".type  = "github";
  inputs."hts-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_11".dir   = "v0_2_11";
  inputs."hts-v0_2_11".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_11".ref   = "master";
  inputs."hts-v0_2_11".repo  = "hts";
  inputs."hts-v0_2_11".type  = "github";
  inputs."hts-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_12".dir   = "v0_2_12";
  inputs."hts-v0_2_12".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_12".ref   = "master";
  inputs."hts-v0_2_12".repo  = "hts";
  inputs."hts-v0_2_12".type  = "github";
  inputs."hts-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_13".dir   = "v0_2_13";
  inputs."hts-v0_2_13".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_13".ref   = "master";
  inputs."hts-v0_2_13".repo  = "hts";
  inputs."hts-v0_2_13".type  = "github";
  inputs."hts-v0_2_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_14".dir   = "v0_2_14";
  inputs."hts-v0_2_14".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_14".ref   = "master";
  inputs."hts-v0_2_14".repo  = "hts";
  inputs."hts-v0_2_14".type  = "github";
  inputs."hts-v0_2_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_15".dir   = "v0_2_15";
  inputs."hts-v0_2_15".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_15".ref   = "master";
  inputs."hts-v0_2_15".repo  = "hts";
  inputs."hts-v0_2_15".type  = "github";
  inputs."hts-v0_2_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_16".dir   = "v0_2_16";
  inputs."hts-v0_2_16".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_16".ref   = "master";
  inputs."hts-v0_2_16".repo  = "hts";
  inputs."hts-v0_2_16".type  = "github";
  inputs."hts-v0_2_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_17".dir   = "v0_2_17";
  inputs."hts-v0_2_17".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_17".ref   = "master";
  inputs."hts-v0_2_17".repo  = "hts";
  inputs."hts-v0_2_17".type  = "github";
  inputs."hts-v0_2_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_18".dir   = "v0_2_18";
  inputs."hts-v0_2_18".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_18".ref   = "master";
  inputs."hts-v0_2_18".repo  = "hts";
  inputs."hts-v0_2_18".type  = "github";
  inputs."hts-v0_2_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_19".dir   = "v0_2_19";
  inputs."hts-v0_2_19".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_19".ref   = "master";
  inputs."hts-v0_2_19".repo  = "hts";
  inputs."hts-v0_2_19".type  = "github";
  inputs."hts-v0_2_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_2".dir   = "v0_2_2";
  inputs."hts-v0_2_2".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_2".ref   = "master";
  inputs."hts-v0_2_2".repo  = "hts";
  inputs."hts-v0_2_2".type  = "github";
  inputs."hts-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_20".dir   = "v0_2_20";
  inputs."hts-v0_2_20".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_20".ref   = "master";
  inputs."hts-v0_2_20".repo  = "hts";
  inputs."hts-v0_2_20".type  = "github";
  inputs."hts-v0_2_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_21".dir   = "v0_2_21";
  inputs."hts-v0_2_21".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_21".ref   = "master";
  inputs."hts-v0_2_21".repo  = "hts";
  inputs."hts-v0_2_21".type  = "github";
  inputs."hts-v0_2_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_22".dir   = "v0_2_22";
  inputs."hts-v0_2_22".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_22".ref   = "master";
  inputs."hts-v0_2_22".repo  = "hts";
  inputs."hts-v0_2_22".type  = "github";
  inputs."hts-v0_2_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_23".dir   = "v0_2_23";
  inputs."hts-v0_2_23".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_23".ref   = "master";
  inputs."hts-v0_2_23".repo  = "hts";
  inputs."hts-v0_2_23".type  = "github";
  inputs."hts-v0_2_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_5".dir   = "v0_2_5";
  inputs."hts-v0_2_5".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_5".ref   = "master";
  inputs."hts-v0_2_5".repo  = "hts";
  inputs."hts-v0_2_5".type  = "github";
  inputs."hts-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_7".dir   = "v0_2_7";
  inputs."hts-v0_2_7".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_7".ref   = "master";
  inputs."hts-v0_2_7".repo  = "hts";
  inputs."hts-v0_2_7".type  = "github";
  inputs."hts-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_2_8".dir   = "v0_2_8";
  inputs."hts-v0_2_8".owner = "nim-nix-pkgs";
  inputs."hts-v0_2_8".ref   = "master";
  inputs."hts-v0_2_8".repo  = "hts";
  inputs."hts-v0_2_8".type  = "github";
  inputs."hts-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_0".dir   = "v0_3_0";
  inputs."hts-v0_3_0".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_0".ref   = "master";
  inputs."hts-v0_3_0".repo  = "hts";
  inputs."hts-v0_3_0".type  = "github";
  inputs."hts-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_10".dir   = "v0_3_10";
  inputs."hts-v0_3_10".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_10".ref   = "master";
  inputs."hts-v0_3_10".repo  = "hts";
  inputs."hts-v0_3_10".type  = "github";
  inputs."hts-v0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_11".dir   = "v0_3_11";
  inputs."hts-v0_3_11".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_11".ref   = "master";
  inputs."hts-v0_3_11".repo  = "hts";
  inputs."hts-v0_3_11".type  = "github";
  inputs."hts-v0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_12".dir   = "v0_3_12";
  inputs."hts-v0_3_12".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_12".ref   = "master";
  inputs."hts-v0_3_12".repo  = "hts";
  inputs."hts-v0_3_12".type  = "github";
  inputs."hts-v0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_13".dir   = "v0_3_13";
  inputs."hts-v0_3_13".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_13".ref   = "master";
  inputs."hts-v0_3_13".repo  = "hts";
  inputs."hts-v0_3_13".type  = "github";
  inputs."hts-v0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_14".dir   = "v0_3_14";
  inputs."hts-v0_3_14".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_14".ref   = "master";
  inputs."hts-v0_3_14".repo  = "hts";
  inputs."hts-v0_3_14".type  = "github";
  inputs."hts-v0_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_15".dir   = "v0_3_15";
  inputs."hts-v0_3_15".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_15".ref   = "master";
  inputs."hts-v0_3_15".repo  = "hts";
  inputs."hts-v0_3_15".type  = "github";
  inputs."hts-v0_3_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_16".dir   = "v0_3_16";
  inputs."hts-v0_3_16".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_16".ref   = "master";
  inputs."hts-v0_3_16".repo  = "hts";
  inputs."hts-v0_3_16".type  = "github";
  inputs."hts-v0_3_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_17".dir   = "v0_3_17";
  inputs."hts-v0_3_17".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_17".ref   = "master";
  inputs."hts-v0_3_17".repo  = "hts";
  inputs."hts-v0_3_17".type  = "github";
  inputs."hts-v0_3_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_18".dir   = "v0_3_18";
  inputs."hts-v0_3_18".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_18".ref   = "master";
  inputs."hts-v0_3_18".repo  = "hts";
  inputs."hts-v0_3_18".type  = "github";
  inputs."hts-v0_3_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_19".dir   = "v0_3_19";
  inputs."hts-v0_3_19".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_19".ref   = "master";
  inputs."hts-v0_3_19".repo  = "hts";
  inputs."hts-v0_3_19".type  = "github";
  inputs."hts-v0_3_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_2".dir   = "v0_3_2";
  inputs."hts-v0_3_2".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_2".ref   = "master";
  inputs."hts-v0_3_2".repo  = "hts";
  inputs."hts-v0_3_2".type  = "github";
  inputs."hts-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_20".dir   = "v0_3_20";
  inputs."hts-v0_3_20".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_20".ref   = "master";
  inputs."hts-v0_3_20".repo  = "hts";
  inputs."hts-v0_3_20".type  = "github";
  inputs."hts-v0_3_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_21".dir   = "v0_3_21";
  inputs."hts-v0_3_21".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_21".ref   = "master";
  inputs."hts-v0_3_21".repo  = "hts";
  inputs."hts-v0_3_21".type  = "github";
  inputs."hts-v0_3_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_22".dir   = "v0_3_22";
  inputs."hts-v0_3_22".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_22".ref   = "master";
  inputs."hts-v0_3_22".repo  = "hts";
  inputs."hts-v0_3_22".type  = "github";
  inputs."hts-v0_3_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_3".dir   = "v0_3_3";
  inputs."hts-v0_3_3".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_3".ref   = "master";
  inputs."hts-v0_3_3".repo  = "hts";
  inputs."hts-v0_3_3".type  = "github";
  inputs."hts-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_4".dir   = "v0_3_4";
  inputs."hts-v0_3_4".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_4".ref   = "master";
  inputs."hts-v0_3_4".repo  = "hts";
  inputs."hts-v0_3_4".type  = "github";
  inputs."hts-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_5".dir   = "v0_3_5";
  inputs."hts-v0_3_5".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_5".ref   = "master";
  inputs."hts-v0_3_5".repo  = "hts";
  inputs."hts-v0_3_5".type  = "github";
  inputs."hts-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_6".dir   = "v0_3_6";
  inputs."hts-v0_3_6".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_6".ref   = "master";
  inputs."hts-v0_3_6".repo  = "hts";
  inputs."hts-v0_3_6".type  = "github";
  inputs."hts-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_7".dir   = "v0_3_7";
  inputs."hts-v0_3_7".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_7".ref   = "master";
  inputs."hts-v0_3_7".repo  = "hts";
  inputs."hts-v0_3_7".type  = "github";
  inputs."hts-v0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_8".dir   = "v0_3_8";
  inputs."hts-v0_3_8".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_8".ref   = "master";
  inputs."hts-v0_3_8".repo  = "hts";
  inputs."hts-v0_3_8".type  = "github";
  inputs."hts-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hts-v0_3_9".dir   = "v0_3_9";
  inputs."hts-v0_3_9".owner = "nim-nix-pkgs";
  inputs."hts-v0_3_9".ref   = "master";
  inputs."hts-v0_3_9".repo  = "hts";
  inputs."hts-v0_3_9".type  = "github";
  inputs."hts-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A consistent markup language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xidoc-master".dir   = "master";
  inputs."xidoc-master".owner = "nim-nix-pkgs";
  inputs."xidoc-master".ref   = "master";
  inputs."xidoc-master".repo  = "xidoc";
  inputs."xidoc-master".type  = "github";
  inputs."xidoc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2020_3_11".dir   = "2020_3_11";
  inputs."xidoc-2020_3_11".owner = "nim-nix-pkgs";
  inputs."xidoc-2020_3_11".ref   = "master";
  inputs."xidoc-2020_3_11".repo  = "xidoc";
  inputs."xidoc-2020_3_11".type  = "github";
  inputs."xidoc-2020_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2020_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2020_5_3".dir   = "2020_5_3";
  inputs."xidoc-2020_5_3".owner = "nim-nix-pkgs";
  inputs."xidoc-2020_5_3".ref   = "master";
  inputs."xidoc-2020_5_3".repo  = "xidoc";
  inputs."xidoc-2020_5_3".type  = "github";
  inputs."xidoc-2020_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2020_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_20".dir   = "2021_10_20";
  inputs."xidoc-2021_10_20".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_10_20".ref   = "master";
  inputs."xidoc-2021_10_20".repo  = "xidoc";
  inputs."xidoc-2021_10_20".type  = "github";
  inputs."xidoc-2021_10_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_21".dir   = "2021_10_21";
  inputs."xidoc-2021_10_21".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_10_21".ref   = "master";
  inputs."xidoc-2021_10_21".repo  = "xidoc";
  inputs."xidoc-2021_10_21".type  = "github";
  inputs."xidoc-2021_10_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_22".dir   = "2021_10_22";
  inputs."xidoc-2021_10_22".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_10_22".ref   = "master";
  inputs."xidoc-2021_10_22".repo  = "xidoc";
  inputs."xidoc-2021_10_22".type  = "github";
  inputs."xidoc-2021_10_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_23".dir   = "2021_10_23";
  inputs."xidoc-2021_10_23".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_10_23".ref   = "master";
  inputs."xidoc-2021_10_23".repo  = "xidoc";
  inputs."xidoc-2021_10_23".type  = "github";
  inputs."xidoc-2021_10_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_24".dir   = "2021_10_24";
  inputs."xidoc-2021_10_24".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_10_24".ref   = "master";
  inputs."xidoc-2021_10_24".repo  = "xidoc";
  inputs."xidoc-2021_10_24".type  = "github";
  inputs."xidoc-2021_10_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_26".dir   = "2021_10_26";
  inputs."xidoc-2021_10_26".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_10_26".ref   = "master";
  inputs."xidoc-2021_10_26".repo  = "xidoc";
  inputs."xidoc-2021_10_26".type  = "github";
  inputs."xidoc-2021_10_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_13".dir   = "2021_11_13";
  inputs."xidoc-2021_11_13".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_11_13".ref   = "master";
  inputs."xidoc-2021_11_13".repo  = "xidoc";
  inputs."xidoc-2021_11_13".type  = "github";
  inputs."xidoc-2021_11_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_15".dir   = "2021_11_15";
  inputs."xidoc-2021_11_15".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_11_15".ref   = "master";
  inputs."xidoc-2021_11_15".repo  = "xidoc";
  inputs."xidoc-2021_11_15".type  = "github";
  inputs."xidoc-2021_11_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_16".dir   = "2021_11_16";
  inputs."xidoc-2021_11_16".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_11_16".ref   = "master";
  inputs."xidoc-2021_11_16".repo  = "xidoc";
  inputs."xidoc-2021_11_16".type  = "github";
  inputs."xidoc-2021_11_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_20".dir   = "2021_11_20";
  inputs."xidoc-2021_11_20".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_11_20".ref   = "master";
  inputs."xidoc-2021_11_20".repo  = "xidoc";
  inputs."xidoc-2021_11_20".type  = "github";
  inputs."xidoc-2021_11_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_21".dir   = "2021_11_21";
  inputs."xidoc-2021_11_21".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_11_21".ref   = "master";
  inputs."xidoc-2021_11_21".repo  = "xidoc";
  inputs."xidoc-2021_11_21".type  = "github";
  inputs."xidoc-2021_11_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_23".dir   = "2021_11_23";
  inputs."xidoc-2021_11_23".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_11_23".ref   = "master";
  inputs."xidoc-2021_11_23".repo  = "xidoc";
  inputs."xidoc-2021_11_23".type  = "github";
  inputs."xidoc-2021_11_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_25".dir   = "2021_11_25";
  inputs."xidoc-2021_11_25".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_11_25".ref   = "master";
  inputs."xidoc-2021_11_25".repo  = "xidoc";
  inputs."xidoc-2021_11_25".type  = "github";
  inputs."xidoc-2021_11_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_27".dir   = "2021_11_27";
  inputs."xidoc-2021_11_27".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_11_27".ref   = "master";
  inputs."xidoc-2021_11_27".repo  = "xidoc";
  inputs."xidoc-2021_11_27".type  = "github";
  inputs."xidoc-2021_11_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_8".dir   = "2021_11_8";
  inputs."xidoc-2021_11_8".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_11_8".ref   = "master";
  inputs."xidoc-2021_11_8".repo  = "xidoc";
  inputs."xidoc-2021_11_8".type  = "github";
  inputs."xidoc-2021_11_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_12_19".dir   = "2021_12_19";
  inputs."xidoc-2021_12_19".owner = "nim-nix-pkgs";
  inputs."xidoc-2021_12_19".ref   = "master";
  inputs."xidoc-2021_12_19".repo  = "xidoc";
  inputs."xidoc-2021_12_19".type  = "github";
  inputs."xidoc-2021_12_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_12_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_1_30".dir   = "2022_1_30";
  inputs."xidoc-2022_1_30".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_1_30".ref   = "master";
  inputs."xidoc-2022_1_30".repo  = "xidoc";
  inputs."xidoc-2022_1_30".type  = "github";
  inputs."xidoc-2022_1_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_1_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_10_14".dir   = "2022_10_14";
  inputs."xidoc-2022_10_14".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_10_14".ref   = "master";
  inputs."xidoc-2022_10_14".repo  = "xidoc";
  inputs."xidoc-2022_10_14".type  = "github";
  inputs."xidoc-2022_10_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_10_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_10_18".dir   = "2022_10_18";
  inputs."xidoc-2022_10_18".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_10_18".ref   = "master";
  inputs."xidoc-2022_10_18".repo  = "xidoc";
  inputs."xidoc-2022_10_18".type  = "github";
  inputs."xidoc-2022_10_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_10_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_10_2".dir   = "2022_10_2";
  inputs."xidoc-2022_10_2".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_10_2".ref   = "master";
  inputs."xidoc-2022_10_2".repo  = "xidoc";
  inputs."xidoc-2022_10_2".type  = "github";
  inputs."xidoc-2022_10_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_10_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_10_24".dir   = "2022_10_24";
  inputs."xidoc-2022_10_24".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_10_24".ref   = "master";
  inputs."xidoc-2022_10_24".repo  = "xidoc";
  inputs."xidoc-2022_10_24".type  = "github";
  inputs."xidoc-2022_10_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_10_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_2_19".dir   = "2022_2_19";
  inputs."xidoc-2022_2_19".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_2_19".ref   = "master";
  inputs."xidoc-2022_2_19".repo  = "xidoc";
  inputs."xidoc-2022_2_19".type  = "github";
  inputs."xidoc-2022_2_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_2_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_2_20".dir   = "2022_2_20";
  inputs."xidoc-2022_2_20".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_2_20".ref   = "master";
  inputs."xidoc-2022_2_20".repo  = "xidoc";
  inputs."xidoc-2022_2_20".type  = "github";
  inputs."xidoc-2022_2_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_2_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_2_6".dir   = "2022_2_6";
  inputs."xidoc-2022_2_6".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_2_6".ref   = "master";
  inputs."xidoc-2022_2_6".repo  = "xidoc";
  inputs."xidoc-2022_2_6".type  = "github";
  inputs."xidoc-2022_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_3_19".dir   = "2022_3_19";
  inputs."xidoc-2022_3_19".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_3_19".ref   = "master";
  inputs."xidoc-2022_3_19".repo  = "xidoc";
  inputs."xidoc-2022_3_19".type  = "github";
  inputs."xidoc-2022_3_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_3_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_3_21".dir   = "2022_3_21";
  inputs."xidoc-2022_3_21".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_3_21".ref   = "master";
  inputs."xidoc-2022_3_21".repo  = "xidoc";
  inputs."xidoc-2022_3_21".type  = "github";
  inputs."xidoc-2022_3_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_3_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_3_22".dir   = "2022_3_22";
  inputs."xidoc-2022_3_22".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_3_22".ref   = "master";
  inputs."xidoc-2022_3_22".repo  = "xidoc";
  inputs."xidoc-2022_3_22".type  = "github";
  inputs."xidoc-2022_3_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_3_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_5_24".dir   = "2022_5_24";
  inputs."xidoc-2022_5_24".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_5_24".ref   = "master";
  inputs."xidoc-2022_5_24".repo  = "xidoc";
  inputs."xidoc-2022_5_24".type  = "github";
  inputs."xidoc-2022_5_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_5_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_5_25".dir   = "2022_5_25";
  inputs."xidoc-2022_5_25".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_5_25".ref   = "master";
  inputs."xidoc-2022_5_25".repo  = "xidoc";
  inputs."xidoc-2022_5_25".type  = "github";
  inputs."xidoc-2022_5_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_5_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_5_3".dir   = "2022_5_3";
  inputs."xidoc-2022_5_3".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_5_3".ref   = "master";
  inputs."xidoc-2022_5_3".repo  = "xidoc";
  inputs."xidoc-2022_5_3".type  = "github";
  inputs."xidoc-2022_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_6_27".dir   = "2022_6_27";
  inputs."xidoc-2022_6_27".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_6_27".ref   = "master";
  inputs."xidoc-2022_6_27".repo  = "xidoc";
  inputs."xidoc-2022_6_27".type  = "github";
  inputs."xidoc-2022_6_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_6_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_7_18".dir   = "2022_7_18";
  inputs."xidoc-2022_7_18".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_7_18".ref   = "master";
  inputs."xidoc-2022_7_18".repo  = "xidoc";
  inputs."xidoc-2022_7_18".type  = "github";
  inputs."xidoc-2022_7_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_7_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_8_24".dir   = "2022_8_24";
  inputs."xidoc-2022_8_24".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_8_24".ref   = "master";
  inputs."xidoc-2022_8_24".repo  = "xidoc";
  inputs."xidoc-2022_8_24".type  = "github";
  inputs."xidoc-2022_8_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_8_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_8_31".dir   = "2022_8_31";
  inputs."xidoc-2022_8_31".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_8_31".ref   = "master";
  inputs."xidoc-2022_8_31".repo  = "xidoc";
  inputs."xidoc-2022_8_31".type  = "github";
  inputs."xidoc-2022_8_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_8_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_9_1".dir   = "2022_9_1";
  inputs."xidoc-2022_9_1".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_9_1".ref   = "master";
  inputs."xidoc-2022_9_1".repo  = "xidoc";
  inputs."xidoc-2022_9_1".type  = "github";
  inputs."xidoc-2022_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_9_19".dir   = "2022_9_19";
  inputs."xidoc-2022_9_19".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_9_19".ref   = "master";
  inputs."xidoc-2022_9_19".repo  = "xidoc";
  inputs."xidoc-2022_9_19".type  = "github";
  inputs."xidoc-2022_9_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_9_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_9_2".dir   = "2022_9_2";
  inputs."xidoc-2022_9_2".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_9_2".ref   = "master";
  inputs."xidoc-2022_9_2".repo  = "xidoc";
  inputs."xidoc-2022_9_2".type  = "github";
  inputs."xidoc-2022_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_9_20".dir   = "2022_9_20";
  inputs."xidoc-2022_9_20".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_9_20".ref   = "master";
  inputs."xidoc-2022_9_20".repo  = "xidoc";
  inputs."xidoc-2022_9_20".type  = "github";
  inputs."xidoc-2022_9_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_9_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_9_21".dir   = "2022_9_21";
  inputs."xidoc-2022_9_21".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_9_21".ref   = "master";
  inputs."xidoc-2022_9_21".repo  = "xidoc";
  inputs."xidoc-2022_9_21".type  = "github";
  inputs."xidoc-2022_9_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_9_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_9_3".dir   = "2022_9_3";
  inputs."xidoc-2022_9_3".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_9_3".ref   = "master";
  inputs."xidoc-2022_9_3".repo  = "xidoc";
  inputs."xidoc-2022_9_3".type  = "github";
  inputs."xidoc-2022_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_9_6".dir   = "2022_9_6";
  inputs."xidoc-2022_9_6".owner = "nim-nix-pkgs";
  inputs."xidoc-2022_9_6".ref   = "master";
  inputs."xidoc-2022_9_6".repo  = "xidoc";
  inputs."xidoc-2022_9_6".type  = "github";
  inputs."xidoc-2022_9_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_9_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
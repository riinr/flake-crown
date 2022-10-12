{
  description = ''Our very personal collection of utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fragments-master".dir   = "master";
  inputs."fragments-master".owner = "nim-nix-pkgs";
  inputs."fragments-master".ref   = "master";
  inputs."fragments-master".repo  = "fragments";
  inputs."fragments-master".type  = "github";
  inputs."fragments-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-0_1_36".dir   = "0_1_36";
  inputs."fragments-0_1_36".owner = "nim-nix-pkgs";
  inputs."fragments-0_1_36".ref   = "master";
  inputs."fragments-0_1_36".repo  = "fragments";
  inputs."fragments-0_1_36".type  = "github";
  inputs."fragments-0_1_36".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-0_1_36".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_1".dir   = "v0_1_1";
  inputs."fragments-v0_1_1".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_1".ref   = "master";
  inputs."fragments-v0_1_1".repo  = "fragments";
  inputs."fragments-v0_1_1".type  = "github";
  inputs."fragments-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_10".dir   = "v0_1_10";
  inputs."fragments-v0_1_10".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_10".ref   = "master";
  inputs."fragments-v0_1_10".repo  = "fragments";
  inputs."fragments-v0_1_10".type  = "github";
  inputs."fragments-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_11".dir   = "v0_1_11";
  inputs."fragments-v0_1_11".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_11".ref   = "master";
  inputs."fragments-v0_1_11".repo  = "fragments";
  inputs."fragments-v0_1_11".type  = "github";
  inputs."fragments-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_12".dir   = "v0_1_12";
  inputs."fragments-v0_1_12".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_12".ref   = "master";
  inputs."fragments-v0_1_12".repo  = "fragments";
  inputs."fragments-v0_1_12".type  = "github";
  inputs."fragments-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_14".dir   = "v0_1_14";
  inputs."fragments-v0_1_14".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_14".ref   = "master";
  inputs."fragments-v0_1_14".repo  = "fragments";
  inputs."fragments-v0_1_14".type  = "github";
  inputs."fragments-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_15".dir   = "v0_1_15";
  inputs."fragments-v0_1_15".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_15".ref   = "master";
  inputs."fragments-v0_1_15".repo  = "fragments";
  inputs."fragments-v0_1_15".type  = "github";
  inputs."fragments-v0_1_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_16".dir   = "v0_1_16";
  inputs."fragments-v0_1_16".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_16".ref   = "master";
  inputs."fragments-v0_1_16".repo  = "fragments";
  inputs."fragments-v0_1_16".type  = "github";
  inputs."fragments-v0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_17".dir   = "v0_1_17";
  inputs."fragments-v0_1_17".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_17".ref   = "master";
  inputs."fragments-v0_1_17".repo  = "fragments";
  inputs."fragments-v0_1_17".type  = "github";
  inputs."fragments-v0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_18".dir   = "v0_1_18";
  inputs."fragments-v0_1_18".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_18".ref   = "master";
  inputs."fragments-v0_1_18".repo  = "fragments";
  inputs."fragments-v0_1_18".type  = "github";
  inputs."fragments-v0_1_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_19".dir   = "v0_1_19";
  inputs."fragments-v0_1_19".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_19".ref   = "master";
  inputs."fragments-v0_1_19".repo  = "fragments";
  inputs."fragments-v0_1_19".type  = "github";
  inputs."fragments-v0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_20".dir   = "v0_1_20";
  inputs."fragments-v0_1_20".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_20".ref   = "master";
  inputs."fragments-v0_1_20".repo  = "fragments";
  inputs."fragments-v0_1_20".type  = "github";
  inputs."fragments-v0_1_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_21".dir   = "v0_1_21";
  inputs."fragments-v0_1_21".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_21".ref   = "master";
  inputs."fragments-v0_1_21".repo  = "fragments";
  inputs."fragments-v0_1_21".type  = "github";
  inputs."fragments-v0_1_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_22".dir   = "v0_1_22";
  inputs."fragments-v0_1_22".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_22".ref   = "master";
  inputs."fragments-v0_1_22".repo  = "fragments";
  inputs."fragments-v0_1_22".type  = "github";
  inputs."fragments-v0_1_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_23".dir   = "v0_1_23";
  inputs."fragments-v0_1_23".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_23".ref   = "master";
  inputs."fragments-v0_1_23".repo  = "fragments";
  inputs."fragments-v0_1_23".type  = "github";
  inputs."fragments-v0_1_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_25".dir   = "v0_1_25";
  inputs."fragments-v0_1_25".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_25".ref   = "master";
  inputs."fragments-v0_1_25".repo  = "fragments";
  inputs."fragments-v0_1_25".type  = "github";
  inputs."fragments-v0_1_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_27".dir   = "v0_1_27";
  inputs."fragments-v0_1_27".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_27".ref   = "master";
  inputs."fragments-v0_1_27".repo  = "fragments";
  inputs."fragments-v0_1_27".type  = "github";
  inputs."fragments-v0_1_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_28".dir   = "v0_1_28";
  inputs."fragments-v0_1_28".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_28".ref   = "master";
  inputs."fragments-v0_1_28".repo  = "fragments";
  inputs."fragments-v0_1_28".type  = "github";
  inputs."fragments-v0_1_28".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_28".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_29".dir   = "v0_1_29";
  inputs."fragments-v0_1_29".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_29".ref   = "master";
  inputs."fragments-v0_1_29".repo  = "fragments";
  inputs."fragments-v0_1_29".type  = "github";
  inputs."fragments-v0_1_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_3".dir   = "v0_1_3";
  inputs."fragments-v0_1_3".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_3".ref   = "master";
  inputs."fragments-v0_1_3".repo  = "fragments";
  inputs."fragments-v0_1_3".type  = "github";
  inputs."fragments-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_30".dir   = "v0_1_30";
  inputs."fragments-v0_1_30".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_30".ref   = "master";
  inputs."fragments-v0_1_30".repo  = "fragments";
  inputs."fragments-v0_1_30".type  = "github";
  inputs."fragments-v0_1_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_31".dir   = "v0_1_31";
  inputs."fragments-v0_1_31".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_31".ref   = "master";
  inputs."fragments-v0_1_31".repo  = "fragments";
  inputs."fragments-v0_1_31".type  = "github";
  inputs."fragments-v0_1_31".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_31".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_32".dir   = "v0_1_32";
  inputs."fragments-v0_1_32".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_32".ref   = "master";
  inputs."fragments-v0_1_32".repo  = "fragments";
  inputs."fragments-v0_1_32".type  = "github";
  inputs."fragments-v0_1_32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_33".dir   = "v0_1_33";
  inputs."fragments-v0_1_33".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_33".ref   = "master";
  inputs."fragments-v0_1_33".repo  = "fragments";
  inputs."fragments-v0_1_33".type  = "github";
  inputs."fragments-v0_1_33".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_33".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_34".dir   = "v0_1_34";
  inputs."fragments-v0_1_34".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_34".ref   = "master";
  inputs."fragments-v0_1_34".repo  = "fragments";
  inputs."fragments-v0_1_34".type  = "github";
  inputs."fragments-v0_1_34".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_34".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_35".dir   = "v0_1_35";
  inputs."fragments-v0_1_35".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_35".ref   = "master";
  inputs."fragments-v0_1_35".repo  = "fragments";
  inputs."fragments-v0_1_35".type  = "github";
  inputs."fragments-v0_1_35".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_35".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_36".dir   = "v0_1_36";
  inputs."fragments-v0_1_36".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_36".ref   = "master";
  inputs."fragments-v0_1_36".repo  = "fragments";
  inputs."fragments-v0_1_36".type  = "github";
  inputs."fragments-v0_1_36".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_36".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_37".dir   = "v0_1_37";
  inputs."fragments-v0_1_37".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_37".ref   = "master";
  inputs."fragments-v0_1_37".repo  = "fragments";
  inputs."fragments-v0_1_37".type  = "github";
  inputs."fragments-v0_1_37".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_37".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_38".dir   = "v0_1_38";
  inputs."fragments-v0_1_38".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_38".ref   = "master";
  inputs."fragments-v0_1_38".repo  = "fragments";
  inputs."fragments-v0_1_38".type  = "github";
  inputs."fragments-v0_1_38".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_38".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_39".dir   = "v0_1_39";
  inputs."fragments-v0_1_39".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_39".ref   = "master";
  inputs."fragments-v0_1_39".repo  = "fragments";
  inputs."fragments-v0_1_39".type  = "github";
  inputs."fragments-v0_1_39".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_39".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_4".dir   = "v0_1_4";
  inputs."fragments-v0_1_4".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_4".ref   = "master";
  inputs."fragments-v0_1_4".repo  = "fragments";
  inputs."fragments-v0_1_4".type  = "github";
  inputs."fragments-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_5".dir   = "v0_1_5";
  inputs."fragments-v0_1_5".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_5".ref   = "master";
  inputs."fragments-v0_1_5".repo  = "fragments";
  inputs."fragments-v0_1_5".type  = "github";
  inputs."fragments-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_6".dir   = "v0_1_6";
  inputs."fragments-v0_1_6".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_6".ref   = "master";
  inputs."fragments-v0_1_6".repo  = "fragments";
  inputs."fragments-v0_1_6".type  = "github";
  inputs."fragments-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_7".dir   = "v0_1_7";
  inputs."fragments-v0_1_7".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_7".ref   = "master";
  inputs."fragments-v0_1_7".repo  = "fragments";
  inputs."fragments-v0_1_7".type  = "github";
  inputs."fragments-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_8".dir   = "v0_1_8";
  inputs."fragments-v0_1_8".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_8".ref   = "master";
  inputs."fragments-v0_1_8".repo  = "fragments";
  inputs."fragments-v0_1_8".type  = "github";
  inputs."fragments-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fragments-v0_1_9".dir   = "v0_1_9";
  inputs."fragments-v0_1_9".owner = "nim-nix-pkgs";
  inputs."fragments-v0_1_9".ref   = "master";
  inputs."fragments-v0_1_9".repo  = "fragments";
  inputs."fragments-v0_1_9".type  = "github";
  inputs."fragments-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fragments-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
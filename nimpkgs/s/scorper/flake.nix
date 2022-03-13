{
  description = ''micro and elegant web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."scorper-1_0_17".dir   = "1_0_17";
  inputs."scorper-1_0_17".owner = "nim-nix-pkgs";
  inputs."scorper-1_0_17".ref   = "master";
  inputs."scorper-1_0_17".repo  = "scorper";
  inputs."scorper-1_0_17".type  = "github";
  inputs."scorper-1_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-1_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_0".dir   = "v1_0_0";
  inputs."scorper-v1_0_0".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_0".ref   = "master";
  inputs."scorper-v1_0_0".repo  = "scorper";
  inputs."scorper-v1_0_0".type  = "github";
  inputs."scorper-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_1".dir   = "v1_0_1";
  inputs."scorper-v1_0_1".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_1".ref   = "master";
  inputs."scorper-v1_0_1".repo  = "scorper";
  inputs."scorper-v1_0_1".type  = "github";
  inputs."scorper-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_10".dir   = "v1_0_10";
  inputs."scorper-v1_0_10".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_10".ref   = "master";
  inputs."scorper-v1_0_10".repo  = "scorper";
  inputs."scorper-v1_0_10".type  = "github";
  inputs."scorper-v1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_11".dir   = "v1_0_11";
  inputs."scorper-v1_0_11".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_11".ref   = "master";
  inputs."scorper-v1_0_11".repo  = "scorper";
  inputs."scorper-v1_0_11".type  = "github";
  inputs."scorper-v1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_12".dir   = "v1_0_12";
  inputs."scorper-v1_0_12".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_12".ref   = "master";
  inputs."scorper-v1_0_12".repo  = "scorper";
  inputs."scorper-v1_0_12".type  = "github";
  inputs."scorper-v1_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_13".dir   = "v1_0_13";
  inputs."scorper-v1_0_13".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_13".ref   = "master";
  inputs."scorper-v1_0_13".repo  = "scorper";
  inputs."scorper-v1_0_13".type  = "github";
  inputs."scorper-v1_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_15".dir   = "v1_0_15";
  inputs."scorper-v1_0_15".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_15".ref   = "master";
  inputs."scorper-v1_0_15".repo  = "scorper";
  inputs."scorper-v1_0_15".type  = "github";
  inputs."scorper-v1_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_16".dir   = "v1_0_16";
  inputs."scorper-v1_0_16".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_16".ref   = "master";
  inputs."scorper-v1_0_16".repo  = "scorper";
  inputs."scorper-v1_0_16".type  = "github";
  inputs."scorper-v1_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_17".dir   = "v1_0_17";
  inputs."scorper-v1_0_17".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_17".ref   = "master";
  inputs."scorper-v1_0_17".repo  = "scorper";
  inputs."scorper-v1_0_17".type  = "github";
  inputs."scorper-v1_0_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_18".dir   = "v1_0_18";
  inputs."scorper-v1_0_18".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_18".ref   = "master";
  inputs."scorper-v1_0_18".repo  = "scorper";
  inputs."scorper-v1_0_18".type  = "github";
  inputs."scorper-v1_0_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_19".dir   = "v1_0_19";
  inputs."scorper-v1_0_19".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_19".ref   = "master";
  inputs."scorper-v1_0_19".repo  = "scorper";
  inputs."scorper-v1_0_19".type  = "github";
  inputs."scorper-v1_0_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_2".dir   = "v1_0_2";
  inputs."scorper-v1_0_2".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_2".ref   = "master";
  inputs."scorper-v1_0_2".repo  = "scorper";
  inputs."scorper-v1_0_2".type  = "github";
  inputs."scorper-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_20".dir   = "v1_0_20";
  inputs."scorper-v1_0_20".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_20".ref   = "master";
  inputs."scorper-v1_0_20".repo  = "scorper";
  inputs."scorper-v1_0_20".type  = "github";
  inputs."scorper-v1_0_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_21".dir   = "v1_0_21";
  inputs."scorper-v1_0_21".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_21".ref   = "master";
  inputs."scorper-v1_0_21".repo  = "scorper";
  inputs."scorper-v1_0_21".type  = "github";
  inputs."scorper-v1_0_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_22".dir   = "v1_0_22";
  inputs."scorper-v1_0_22".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_22".ref   = "master";
  inputs."scorper-v1_0_22".repo  = "scorper";
  inputs."scorper-v1_0_22".type  = "github";
  inputs."scorper-v1_0_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_23".dir   = "v1_0_23";
  inputs."scorper-v1_0_23".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_23".ref   = "master";
  inputs."scorper-v1_0_23".repo  = "scorper";
  inputs."scorper-v1_0_23".type  = "github";
  inputs."scorper-v1_0_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_24".dir   = "v1_0_24";
  inputs."scorper-v1_0_24".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_24".ref   = "master";
  inputs."scorper-v1_0_24".repo  = "scorper";
  inputs."scorper-v1_0_24".type  = "github";
  inputs."scorper-v1_0_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_25".dir   = "v1_0_25";
  inputs."scorper-v1_0_25".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_25".ref   = "master";
  inputs."scorper-v1_0_25".repo  = "scorper";
  inputs."scorper-v1_0_25".type  = "github";
  inputs."scorper-v1_0_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_26".dir   = "v1_0_26";
  inputs."scorper-v1_0_26".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_26".ref   = "master";
  inputs."scorper-v1_0_26".repo  = "scorper";
  inputs."scorper-v1_0_26".type  = "github";
  inputs."scorper-v1_0_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_3".dir   = "v1_0_3";
  inputs."scorper-v1_0_3".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_3".ref   = "master";
  inputs."scorper-v1_0_3".repo  = "scorper";
  inputs."scorper-v1_0_3".type  = "github";
  inputs."scorper-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_4".dir   = "v1_0_4";
  inputs."scorper-v1_0_4".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_4".ref   = "master";
  inputs."scorper-v1_0_4".repo  = "scorper";
  inputs."scorper-v1_0_4".type  = "github";
  inputs."scorper-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_5".dir   = "v1_0_5";
  inputs."scorper-v1_0_5".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_5".ref   = "master";
  inputs."scorper-v1_0_5".repo  = "scorper";
  inputs."scorper-v1_0_5".type  = "github";
  inputs."scorper-v1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_6".dir   = "v1_0_6";
  inputs."scorper-v1_0_6".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_6".ref   = "master";
  inputs."scorper-v1_0_6".repo  = "scorper";
  inputs."scorper-v1_0_6".type  = "github";
  inputs."scorper-v1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_7".dir   = "v1_0_7";
  inputs."scorper-v1_0_7".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_7".ref   = "master";
  inputs."scorper-v1_0_7".repo  = "scorper";
  inputs."scorper-v1_0_7".type  = "github";
  inputs."scorper-v1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_8".dir   = "v1_0_8";
  inputs."scorper-v1_0_8".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_8".ref   = "master";
  inputs."scorper-v1_0_8".repo  = "scorper";
  inputs."scorper-v1_0_8".type  = "github";
  inputs."scorper-v1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scorper-v1_0_9".dir   = "v1_0_9";
  inputs."scorper-v1_0_9".owner = "nim-nix-pkgs";
  inputs."scorper-v1_0_9".ref   = "master";
  inputs."scorper-v1_0_9".repo  = "scorper";
  inputs."scorper-v1_0_9".type  = "github";
  inputs."scorper-v1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scorper-v1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
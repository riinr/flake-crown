{
  description = ''This is the plugins for the zfcore framework https://github.com/zendbit/nim.zfcore'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zfplugs-master".dir   = "master";
  inputs."zfplugs-master".owner = "nim-nix-pkgs";
  inputs."zfplugs-master".ref   = "master";
  inputs."zfplugs-master".repo  = "zfplugs";
  inputs."zfplugs-master".type  = "github";
  inputs."zfplugs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_0_19".dir   = "0_0_19";
  inputs."zfplugs-0_0_19".owner = "nim-nix-pkgs";
  inputs."zfplugs-0_0_19".ref   = "master";
  inputs."zfplugs-0_0_19".repo  = "zfplugs";
  inputs."zfplugs-0_0_19".type  = "github";
  inputs."zfplugs-0_0_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_0_20".dir   = "0_0_20";
  inputs."zfplugs-0_0_20".owner = "nim-nix-pkgs";
  inputs."zfplugs-0_0_20".ref   = "master";
  inputs."zfplugs-0_0_20".repo  = "zfplugs";
  inputs."zfplugs-0_0_20".type  = "github";
  inputs."zfplugs-0_0_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_0_21".dir   = "0_0_21";
  inputs."zfplugs-0_0_21".owner = "nim-nix-pkgs";
  inputs."zfplugs-0_0_21".ref   = "master";
  inputs."zfplugs-0_0_21".repo  = "zfplugs";
  inputs."zfplugs-0_0_21".type  = "github";
  inputs."zfplugs-0_0_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_0_22".dir   = "0_0_22";
  inputs."zfplugs-0_0_22".owner = "nim-nix-pkgs";
  inputs."zfplugs-0_0_22".ref   = "master";
  inputs."zfplugs-0_0_22".repo  = "zfplugs";
  inputs."zfplugs-0_0_22".type  = "github";
  inputs."zfplugs-0_0_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_0_23".dir   = "0_0_23";
  inputs."zfplugs-0_0_23".owner = "nim-nix-pkgs";
  inputs."zfplugs-0_0_23".ref   = "master";
  inputs."zfplugs-0_0_23".repo  = "zfplugs";
  inputs."zfplugs-0_0_23".type  = "github";
  inputs."zfplugs-0_0_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_0_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_1_1".dir   = "0_1_1";
  inputs."zfplugs-0_1_1".owner = "nim-nix-pkgs";
  inputs."zfplugs-0_1_1".ref   = "master";
  inputs."zfplugs-0_1_1".repo  = "zfplugs";
  inputs."zfplugs-0_1_1".type  = "github";
  inputs."zfplugs-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_1_2".dir   = "0_1_2";
  inputs."zfplugs-0_1_2".owner = "nim-nix-pkgs";
  inputs."zfplugs-0_1_2".ref   = "master";
  inputs."zfplugs-0_1_2".repo  = "zfplugs";
  inputs."zfplugs-0_1_2".type  = "github";
  inputs."zfplugs-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-0_1_4".dir   = "0_1_4";
  inputs."zfplugs-0_1_4".owner = "nim-nix-pkgs";
  inputs."zfplugs-0_1_4".ref   = "master";
  inputs."zfplugs-0_1_4".repo  = "zfplugs";
  inputs."zfplugs-0_1_4".type  = "github";
  inputs."zfplugs-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_0_3".dir   = "v0_0_3";
  inputs."zfplugs-v0_0_3".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_0_3".ref   = "master";
  inputs."zfplugs-v0_0_3".repo  = "zfplugs";
  inputs."zfplugs-v0_0_3".type  = "github";
  inputs."zfplugs-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_0_5".dir   = "v0_0_5";
  inputs."zfplugs-v0_0_5".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_0_5".ref   = "master";
  inputs."zfplugs-v0_0_5".repo  = "zfplugs";
  inputs."zfplugs-v0_0_5".type  = "github";
  inputs."zfplugs-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_0_6".dir   = "v0_0_6";
  inputs."zfplugs-v0_0_6".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_0_6".ref   = "master";
  inputs."zfplugs-v0_0_6".repo  = "zfplugs";
  inputs."zfplugs-v0_0_6".type  = "github";
  inputs."zfplugs-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_0_7".dir   = "v0_0_7";
  inputs."zfplugs-v0_0_7".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_0_7".ref   = "master";
  inputs."zfplugs-v0_0_7".repo  = "zfplugs";
  inputs."zfplugs-v0_0_7".type  = "github";
  inputs."zfplugs-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_10".dir   = "v0_1_10";
  inputs."zfplugs-v0_1_10".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_1_10".ref   = "master";
  inputs."zfplugs-v0_1_10".repo  = "zfplugs";
  inputs."zfplugs-v0_1_10".type  = "github";
  inputs."zfplugs-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_11".dir   = "v0_1_11";
  inputs."zfplugs-v0_1_11".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_1_11".ref   = "master";
  inputs."zfplugs-v0_1_11".repo  = "zfplugs";
  inputs."zfplugs-v0_1_11".type  = "github";
  inputs."zfplugs-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_14".dir   = "v0_1_14";
  inputs."zfplugs-v0_1_14".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_1_14".ref   = "master";
  inputs."zfplugs-v0_1_14".repo  = "zfplugs";
  inputs."zfplugs-v0_1_14".type  = "github";
  inputs."zfplugs-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_5".dir   = "v0_1_5";
  inputs."zfplugs-v0_1_5".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_1_5".ref   = "master";
  inputs."zfplugs-v0_1_5".repo  = "zfplugs";
  inputs."zfplugs-v0_1_5".type  = "github";
  inputs."zfplugs-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_6".dir   = "v0_1_6";
  inputs."zfplugs-v0_1_6".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_1_6".ref   = "master";
  inputs."zfplugs-v0_1_6".repo  = "zfplugs";
  inputs."zfplugs-v0_1_6".type  = "github";
  inputs."zfplugs-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_7".dir   = "v0_1_7";
  inputs."zfplugs-v0_1_7".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_1_7".ref   = "master";
  inputs."zfplugs-v0_1_7".repo  = "zfplugs";
  inputs."zfplugs-v0_1_7".type  = "github";
  inputs."zfplugs-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_8".dir   = "v0_1_8";
  inputs."zfplugs-v0_1_8".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_1_8".ref   = "master";
  inputs."zfplugs-v0_1_8".repo  = "zfplugs";
  inputs."zfplugs-v0_1_8".type  = "github";
  inputs."zfplugs-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v0_1_9".dir   = "v0_1_9";
  inputs."zfplugs-v0_1_9".owner = "nim-nix-pkgs";
  inputs."zfplugs-v0_1_9".ref   = "master";
  inputs."zfplugs-v0_1_9".repo  = "zfplugs";
  inputs."zfplugs-v0_1_9".type  = "github";
  inputs."zfplugs-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v1_1_16".dir   = "v1_1_16";
  inputs."zfplugs-v1_1_16".owner = "nim-nix-pkgs";
  inputs."zfplugs-v1_1_16".ref   = "master";
  inputs."zfplugs-v1_1_16".repo  = "zfplugs";
  inputs."zfplugs-v1_1_16".type  = "github";
  inputs."zfplugs-v1_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v1_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfplugs-v1_1_8".dir   = "v1_1_8";
  inputs."zfplugs-v1_1_8".owner = "nim-nix-pkgs";
  inputs."zfplugs-v1_1_8".ref   = "master";
  inputs."zfplugs-v1_1_8".repo  = "zfplugs";
  inputs."zfplugs-v1_1_8".type  = "github";
  inputs."zfplugs-v1_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfplugs-v1_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
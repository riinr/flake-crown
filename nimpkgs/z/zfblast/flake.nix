{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zfblast-master".dir   = "master";
  inputs."zfblast-master".owner = "nim-nix-pkgs";
  inputs."zfblast-master".ref   = "master";
  inputs."zfblast-master".repo  = "zfblast";
  inputs."zfblast-master".type  = "github";
  inputs."zfblast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-0_1_19".dir   = "0_1_19";
  inputs."zfblast-0_1_19".owner = "nim-nix-pkgs";
  inputs."zfblast-0_1_19".ref   = "master";
  inputs."zfblast-0_1_19".repo  = "zfblast";
  inputs."zfblast-0_1_19".type  = "github";
  inputs."zfblast-0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_0".dir   = "v0_1_0";
  inputs."zfblast-v0_1_0".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_0".ref   = "master";
  inputs."zfblast-v0_1_0".repo  = "zfblast";
  inputs."zfblast-v0_1_0".type  = "github";
  inputs."zfblast-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_1".dir   = "v0_1_1";
  inputs."zfblast-v0_1_1".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_1".ref   = "master";
  inputs."zfblast-v0_1_1".repo  = "zfblast";
  inputs."zfblast-v0_1_1".type  = "github";
  inputs."zfblast-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_10".dir   = "v0_1_10";
  inputs."zfblast-v0_1_10".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_10".ref   = "master";
  inputs."zfblast-v0_1_10".repo  = "zfblast";
  inputs."zfblast-v0_1_10".type  = "github";
  inputs."zfblast-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_14".dir   = "v0_1_14";
  inputs."zfblast-v0_1_14".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_14".ref   = "master";
  inputs."zfblast-v0_1_14".repo  = "zfblast";
  inputs."zfblast-v0_1_14".type  = "github";
  inputs."zfblast-v0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_16".dir   = "v0_1_16";
  inputs."zfblast-v0_1_16".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_16".ref   = "master";
  inputs."zfblast-v0_1_16".repo  = "zfblast";
  inputs."zfblast-v0_1_16".type  = "github";
  inputs."zfblast-v0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_17".dir   = "v0_1_17";
  inputs."zfblast-v0_1_17".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_17".ref   = "master";
  inputs."zfblast-v0_1_17".repo  = "zfblast";
  inputs."zfblast-v0_1_17".type  = "github";
  inputs."zfblast-v0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_17-old".dir   = "v0_1_17-old";
  inputs."zfblast-v0_1_17-old".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_17-old".ref   = "master";
  inputs."zfblast-v0_1_17-old".repo  = "zfblast";
  inputs."zfblast-v0_1_17-old".type  = "github";
  inputs."zfblast-v0_1_17-old".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_17-old".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_19".dir   = "v0_1_19";
  inputs."zfblast-v0_1_19".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_19".ref   = "master";
  inputs."zfblast-v0_1_19".repo  = "zfblast";
  inputs."zfblast-v0_1_19".type  = "github";
  inputs."zfblast-v0_1_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_2".dir   = "v0_1_2";
  inputs."zfblast-v0_1_2".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_2".ref   = "master";
  inputs."zfblast-v0_1_2".repo  = "zfblast";
  inputs."zfblast-v0_1_2".type  = "github";
  inputs."zfblast-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_3".dir   = "v0_1_3";
  inputs."zfblast-v0_1_3".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_3".ref   = "master";
  inputs."zfblast-v0_1_3".repo  = "zfblast";
  inputs."zfblast-v0_1_3".type  = "github";
  inputs."zfblast-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_4".dir   = "v0_1_4";
  inputs."zfblast-v0_1_4".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_4".ref   = "master";
  inputs."zfblast-v0_1_4".repo  = "zfblast";
  inputs."zfblast-v0_1_4".type  = "github";
  inputs."zfblast-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_5".dir   = "v0_1_5";
  inputs."zfblast-v0_1_5".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_5".ref   = "master";
  inputs."zfblast-v0_1_5".repo  = "zfblast";
  inputs."zfblast-v0_1_5".type  = "github";
  inputs."zfblast-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_6".dir   = "v0_1_6";
  inputs."zfblast-v0_1_6".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_6".ref   = "master";
  inputs."zfblast-v0_1_6".repo  = "zfblast";
  inputs."zfblast-v0_1_6".type  = "github";
  inputs."zfblast-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_6-stable".dir   = "v0_1_6-stable";
  inputs."zfblast-v0_1_6-stable".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_6-stable".ref   = "master";
  inputs."zfblast-v0_1_6-stable".repo  = "zfblast";
  inputs."zfblast-v0_1_6-stable".type  = "github";
  inputs."zfblast-v0_1_6-stable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_6-stable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_1_7".dir   = "v0_1_7";
  inputs."zfblast-v0_1_7".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_1_7".ref   = "master";
  inputs."zfblast-v0_1_7".repo  = "zfblast";
  inputs."zfblast-v0_1_7".type  = "github";
  inputs."zfblast-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_2".dir   = "v0_2_2";
  inputs."zfblast-v0_2_2".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_2_2".ref   = "master";
  inputs."zfblast-v0_2_2".repo  = "zfblast";
  inputs."zfblast-v0_2_2".type  = "github";
  inputs."zfblast-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_3".dir   = "v0_2_3";
  inputs."zfblast-v0_2_3".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_2_3".ref   = "master";
  inputs."zfblast-v0_2_3".repo  = "zfblast";
  inputs."zfblast-v0_2_3".type  = "github";
  inputs."zfblast-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_3-beta".dir   = "v0_2_3-beta";
  inputs."zfblast-v0_2_3-beta".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_2_3-beta".ref   = "master";
  inputs."zfblast-v0_2_3-beta".repo  = "zfblast";
  inputs."zfblast-v0_2_3-beta".type  = "github";
  inputs."zfblast-v0_2_3-beta".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_3-beta".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_4".dir   = "v0_2_4";
  inputs."zfblast-v0_2_4".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_2_4".ref   = "master";
  inputs."zfblast-v0_2_4".repo  = "zfblast";
  inputs."zfblast-v0_2_4".type  = "github";
  inputs."zfblast-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_5".dir   = "v0_2_5";
  inputs."zfblast-v0_2_5".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_2_5".ref   = "master";
  inputs."zfblast-v0_2_5".repo  = "zfblast";
  inputs."zfblast-v0_2_5".type  = "github";
  inputs."zfblast-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_6".dir   = "v0_2_6";
  inputs."zfblast-v0_2_6".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_2_6".ref   = "master";
  inputs."zfblast-v0_2_6".repo  = "zfblast";
  inputs."zfblast-v0_2_6".type  = "github";
  inputs."zfblast-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_7".dir   = "v0_2_7";
  inputs."zfblast-v0_2_7".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_2_7".ref   = "master";
  inputs."zfblast-v0_2_7".repo  = "zfblast";
  inputs."zfblast-v0_2_7".type  = "github";
  inputs."zfblast-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfblast-v0_2_8".dir   = "v0_2_8";
  inputs."zfblast-v0_2_8".owner = "nim-nix-pkgs";
  inputs."zfblast-v0_2_8".ref   = "master";
  inputs."zfblast-v0_2_8".repo  = "zfblast";
  inputs."zfblast-v0_2_8".type  = "github";
  inputs."zfblast-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfblast-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
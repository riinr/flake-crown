{
  description = ''Neverwinter Nights 1 data accessor library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."neverwinter-master".dir   = "master";
  inputs."neverwinter-master".owner = "nim-nix-pkgs";
  inputs."neverwinter-master".ref   = "master";
  inputs."neverwinter-master".repo  = "neverwinter";
  inputs."neverwinter-master".type  = "github";
  inputs."neverwinter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_1_1".dir   = "1_1_1";
  inputs."neverwinter-1_1_1".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_1_1".ref   = "master";
  inputs."neverwinter-1_1_1".repo  = "neverwinter";
  inputs."neverwinter-1_1_1".type  = "github";
  inputs."neverwinter-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_0".dir   = "1_2_0";
  inputs."neverwinter-1_2_0".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_0".ref   = "master";
  inputs."neverwinter-1_2_0".repo  = "neverwinter";
  inputs."neverwinter-1_2_0".type  = "github";
  inputs."neverwinter-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_1".dir   = "1_2_1";
  inputs."neverwinter-1_2_1".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_1".ref   = "master";
  inputs."neverwinter-1_2_1".repo  = "neverwinter";
  inputs."neverwinter-1_2_1".type  = "github";
  inputs."neverwinter-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_10".dir   = "1_2_10";
  inputs."neverwinter-1_2_10".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_10".ref   = "master";
  inputs."neverwinter-1_2_10".repo  = "neverwinter";
  inputs."neverwinter-1_2_10".type  = "github";
  inputs."neverwinter-1_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_10-1_2_0".dir   = "1_2_10-1_2_0";
  inputs."neverwinter-1_2_10-1_2_0".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_10-1_2_0".ref   = "master";
  inputs."neverwinter-1_2_10-1_2_0".repo  = "neverwinter";
  inputs."neverwinter-1_2_10-1_2_0".type  = "github";
  inputs."neverwinter-1_2_10-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_10-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_2".dir   = "1_2_2";
  inputs."neverwinter-1_2_2".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_2".ref   = "master";
  inputs."neverwinter-1_2_2".repo  = "neverwinter";
  inputs."neverwinter-1_2_2".type  = "github";
  inputs."neverwinter-1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_3".dir   = "1_2_3";
  inputs."neverwinter-1_2_3".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_3".ref   = "master";
  inputs."neverwinter-1_2_3".repo  = "neverwinter";
  inputs."neverwinter-1_2_3".type  = "github";
  inputs."neverwinter-1_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_4".dir   = "1_2_4";
  inputs."neverwinter-1_2_4".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_4".ref   = "master";
  inputs."neverwinter-1_2_4".repo  = "neverwinter";
  inputs."neverwinter-1_2_4".type  = "github";
  inputs."neverwinter-1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_5".dir   = "1_2_5";
  inputs."neverwinter-1_2_5".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_5".ref   = "master";
  inputs."neverwinter-1_2_5".repo  = "neverwinter";
  inputs."neverwinter-1_2_5".type  = "github";
  inputs."neverwinter-1_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_7".dir   = "1_2_7";
  inputs."neverwinter-1_2_7".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_7".ref   = "master";
  inputs."neverwinter-1_2_7".repo  = "neverwinter";
  inputs."neverwinter-1_2_7".type  = "github";
  inputs."neverwinter-1_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_8".dir   = "1_2_8";
  inputs."neverwinter-1_2_8".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_8".ref   = "master";
  inputs."neverwinter-1_2_8".repo  = "neverwinter";
  inputs."neverwinter-1_2_8".type  = "github";
  inputs."neverwinter-1_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_2_9".dir   = "1_2_9";
  inputs."neverwinter-1_2_9".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_2_9".ref   = "master";
  inputs."neverwinter-1_2_9".repo  = "neverwinter";
  inputs."neverwinter-1_2_9".type  = "github";
  inputs."neverwinter-1_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_3_0".dir   = "1_3_0";
  inputs."neverwinter-1_3_0".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_3_0".ref   = "master";
  inputs."neverwinter-1_3_0".repo  = "neverwinter";
  inputs."neverwinter-1_3_0".type  = "github";
  inputs."neverwinter-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_3_1".dir   = "1_3_1";
  inputs."neverwinter-1_3_1".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_3_1".ref   = "master";
  inputs."neverwinter-1_3_1".repo  = "neverwinter";
  inputs."neverwinter-1_3_1".type  = "github";
  inputs."neverwinter-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_3_2".dir   = "1_3_2";
  inputs."neverwinter-1_3_2".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_3_2".ref   = "master";
  inputs."neverwinter-1_3_2".repo  = "neverwinter";
  inputs."neverwinter-1_3_2".type  = "github";
  inputs."neverwinter-1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_4_1".dir   = "1_4_1";
  inputs."neverwinter-1_4_1".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_4_1".ref   = "master";
  inputs."neverwinter-1_4_1".repo  = "neverwinter";
  inputs."neverwinter-1_4_1".type  = "github";
  inputs."neverwinter-1_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_4_2".dir   = "1_4_2";
  inputs."neverwinter-1_4_2".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_4_2".ref   = "master";
  inputs."neverwinter-1_4_2".repo  = "neverwinter";
  inputs."neverwinter-1_4_2".type  = "github";
  inputs."neverwinter-1_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_4_3".dir   = "1_4_3";
  inputs."neverwinter-1_4_3".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_4_3".ref   = "master";
  inputs."neverwinter-1_4_3".repo  = "neverwinter";
  inputs."neverwinter-1_4_3".type  = "github";
  inputs."neverwinter-1_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_4_4".dir   = "1_4_4";
  inputs."neverwinter-1_4_4".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_4_4".ref   = "master";
  inputs."neverwinter-1_4_4".repo  = "neverwinter";
  inputs."neverwinter-1_4_4".type  = "github";
  inputs."neverwinter-1_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_4_5".dir   = "1_4_5";
  inputs."neverwinter-1_4_5".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_4_5".ref   = "master";
  inputs."neverwinter-1_4_5".repo  = "neverwinter";
  inputs."neverwinter-1_4_5".type  = "github";
  inputs."neverwinter-1_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_5_0".dir   = "1_5_0";
  inputs."neverwinter-1_5_0".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_5_0".ref   = "master";
  inputs."neverwinter-1_5_0".repo  = "neverwinter";
  inputs."neverwinter-1_5_0".type  = "github";
  inputs."neverwinter-1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_5_1".dir   = "1_5_1";
  inputs."neverwinter-1_5_1".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_5_1".ref   = "master";
  inputs."neverwinter-1_5_1".repo  = "neverwinter";
  inputs."neverwinter-1_5_1".type  = "github";
  inputs."neverwinter-1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_5_2".dir   = "1_5_2";
  inputs."neverwinter-1_5_2".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_5_2".ref   = "master";
  inputs."neverwinter-1_5_2".repo  = "neverwinter";
  inputs."neverwinter-1_5_2".type  = "github";
  inputs."neverwinter-1_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_5_3".dir   = "1_5_3";
  inputs."neverwinter-1_5_3".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_5_3".ref   = "master";
  inputs."neverwinter-1_5_3".repo  = "neverwinter";
  inputs."neverwinter-1_5_3".type  = "github";
  inputs."neverwinter-1_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_5_4".dir   = "1_5_4";
  inputs."neverwinter-1_5_4".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_5_4".ref   = "master";
  inputs."neverwinter-1_5_4".repo  = "neverwinter";
  inputs."neverwinter-1_5_4".type  = "github";
  inputs."neverwinter-1_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_5_5".dir   = "1_5_5";
  inputs."neverwinter-1_5_5".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_5_5".ref   = "master";
  inputs."neverwinter-1_5_5".repo  = "neverwinter";
  inputs."neverwinter-1_5_5".type  = "github";
  inputs."neverwinter-1_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_5_6".dir   = "1_5_6";
  inputs."neverwinter-1_5_6".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_5_6".ref   = "master";
  inputs."neverwinter-1_5_6".repo  = "neverwinter";
  inputs."neverwinter-1_5_6".type  = "github";
  inputs."neverwinter-1_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter-1_5_7".dir   = "1_5_7";
  inputs."neverwinter-1_5_7".owner = "nim-nix-pkgs";
  inputs."neverwinter-1_5_7".ref   = "master";
  inputs."neverwinter-1_5_7".repo  = "neverwinter";
  inputs."neverwinter-1_5_7".type  = "github";
  inputs."neverwinter-1_5_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter-1_5_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter_utils-v1_0_0".dir   = "v1_0_0";
  inputs."neverwinter_utils-v1_0_0".owner = "nim-nix-pkgs";
  inputs."neverwinter_utils-v1_0_0".ref   = "master";
  inputs."neverwinter_utils-v1_0_0".repo  = "neverwinter_utils";
  inputs."neverwinter_utils-v1_0_0".type  = "github";
  inputs."neverwinter_utils-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter_utils-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter_utils-v1_0_1".dir   = "v1_0_1";
  inputs."neverwinter_utils-v1_0_1".owner = "nim-nix-pkgs";
  inputs."neverwinter_utils-v1_0_1".ref   = "master";
  inputs."neverwinter_utils-v1_0_1".repo  = "neverwinter_utils";
  inputs."neverwinter_utils-v1_0_1".type  = "github";
  inputs."neverwinter_utils-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter_utils-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neverwinter_utils-v1_1_0".dir   = "v1_1_0";
  inputs."neverwinter_utils-v1_1_0".owner = "nim-nix-pkgs";
  inputs."neverwinter_utils-v1_1_0".ref   = "master";
  inputs."neverwinter_utils-v1_1_0".repo  = "neverwinter_utils";
  inputs."neverwinter_utils-v1_1_0".type  = "github";
  inputs."neverwinter_utils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neverwinter_utils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
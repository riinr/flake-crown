{
  description = ''Nim Game Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgl-master".dir   = "master";
  inputs."nimgl-master".owner = "nim-nix-pkgs";
  inputs."nimgl-master".ref   = "master";
  inputs."nimgl-master".repo  = "nimgl";
  inputs."nimgl-master".type  = "github";
  inputs."nimgl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_1_0".dir   = "0_1_0";
  inputs."nimgl-0_1_0".owner = "nim-nix-pkgs";
  inputs."nimgl-0_1_0".ref   = "master";
  inputs."nimgl-0_1_0".repo  = "nimgl";
  inputs."nimgl-0_1_0".type  = "github";
  inputs."nimgl-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_2_0".dir   = "0_2_0";
  inputs."nimgl-0_2_0".owner = "nim-nix-pkgs";
  inputs."nimgl-0_2_0".ref   = "master";
  inputs."nimgl-0_2_0".repo  = "nimgl";
  inputs."nimgl-0_2_0".type  = "github";
  inputs."nimgl-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_2_1".dir   = "0_2_1";
  inputs."nimgl-0_2_1".owner = "nim-nix-pkgs";
  inputs."nimgl-0_2_1".ref   = "master";
  inputs."nimgl-0_2_1".repo  = "nimgl";
  inputs."nimgl-0_2_1".type  = "github";
  inputs."nimgl-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_2_2".dir   = "0_2_2";
  inputs."nimgl-0_2_2".owner = "nim-nix-pkgs";
  inputs."nimgl-0_2_2".ref   = "master";
  inputs."nimgl-0_2_2".repo  = "nimgl";
  inputs."nimgl-0_2_2".type  = "github";
  inputs."nimgl-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_0".dir   = "0_3_0";
  inputs."nimgl-0_3_0".owner = "nim-nix-pkgs";
  inputs."nimgl-0_3_0".ref   = "master";
  inputs."nimgl-0_3_0".repo  = "nimgl";
  inputs."nimgl-0_3_0".type  = "github";
  inputs."nimgl-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_1".dir   = "0_3_1";
  inputs."nimgl-0_3_1".owner = "nim-nix-pkgs";
  inputs."nimgl-0_3_1".ref   = "master";
  inputs."nimgl-0_3_1".repo  = "nimgl";
  inputs."nimgl-0_3_1".type  = "github";
  inputs."nimgl-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_2".dir   = "0_3_2";
  inputs."nimgl-0_3_2".owner = "nim-nix-pkgs";
  inputs."nimgl-0_3_2".ref   = "master";
  inputs."nimgl-0_3_2".repo  = "nimgl";
  inputs."nimgl-0_3_2".type  = "github";
  inputs."nimgl-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_3".dir   = "0_3_3";
  inputs."nimgl-0_3_3".owner = "nim-nix-pkgs";
  inputs."nimgl-0_3_3".ref   = "master";
  inputs."nimgl-0_3_3".repo  = "nimgl";
  inputs."nimgl-0_3_3".type  = "github";
  inputs."nimgl-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_4".dir   = "0_3_4";
  inputs."nimgl-0_3_4".owner = "nim-nix-pkgs";
  inputs."nimgl-0_3_4".ref   = "master";
  inputs."nimgl-0_3_4".repo  = "nimgl";
  inputs."nimgl-0_3_4".type  = "github";
  inputs."nimgl-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_5".dir   = "0_3_5";
  inputs."nimgl-0_3_5".owner = "nim-nix-pkgs";
  inputs."nimgl-0_3_5".ref   = "master";
  inputs."nimgl-0_3_5".repo  = "nimgl";
  inputs."nimgl-0_3_5".type  = "github";
  inputs."nimgl-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_6".dir   = "0_3_6";
  inputs."nimgl-0_3_6".owner = "nim-nix-pkgs";
  inputs."nimgl-0_3_6".ref   = "master";
  inputs."nimgl-0_3_6".repo  = "nimgl";
  inputs."nimgl-0_3_6".type  = "github";
  inputs."nimgl-0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-0_3_7".dir   = "0_3_7";
  inputs."nimgl-0_3_7".owner = "nim-nix-pkgs";
  inputs."nimgl-0_3_7".ref   = "master";
  inputs."nimgl-0_3_7".repo  = "nimgl";
  inputs."nimgl-0_3_7".type  = "github";
  inputs."nimgl-0_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-0_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_0_0".dir   = "1_0_0";
  inputs."nimgl-1_0_0".owner = "nim-nix-pkgs";
  inputs."nimgl-1_0_0".ref   = "master";
  inputs."nimgl-1_0_0".repo  = "nimgl";
  inputs."nimgl-1_0_0".type  = "github";
  inputs."nimgl-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_0_1".dir   = "1_0_1";
  inputs."nimgl-1_0_1".owner = "nim-nix-pkgs";
  inputs."nimgl-1_0_1".ref   = "master";
  inputs."nimgl-1_0_1".repo  = "nimgl";
  inputs."nimgl-1_0_1".type  = "github";
  inputs."nimgl-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_0".dir   = "1_1_0";
  inputs."nimgl-1_1_0".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_0".ref   = "master";
  inputs."nimgl-1_1_0".repo  = "nimgl";
  inputs."nimgl-1_1_0".type  = "github";
  inputs."nimgl-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_1".dir   = "1_1_1";
  inputs."nimgl-1_1_1".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_1".ref   = "master";
  inputs."nimgl-1_1_1".repo  = "nimgl";
  inputs."nimgl-1_1_1".type  = "github";
  inputs."nimgl-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_10".dir   = "1_1_10";
  inputs."nimgl-1_1_10".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_10".ref   = "master";
  inputs."nimgl-1_1_10".repo  = "nimgl";
  inputs."nimgl-1_1_10".type  = "github";
  inputs."nimgl-1_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_2".dir   = "1_1_2";
  inputs."nimgl-1_1_2".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_2".ref   = "master";
  inputs."nimgl-1_1_2".repo  = "nimgl";
  inputs."nimgl-1_1_2".type  = "github";
  inputs."nimgl-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_3".dir   = "1_1_3";
  inputs."nimgl-1_1_3".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_3".ref   = "master";
  inputs."nimgl-1_1_3".repo  = "nimgl";
  inputs."nimgl-1_1_3".type  = "github";
  inputs."nimgl-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_4".dir   = "1_1_4";
  inputs."nimgl-1_1_4".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_4".ref   = "master";
  inputs."nimgl-1_1_4".repo  = "nimgl";
  inputs."nimgl-1_1_4".type  = "github";
  inputs."nimgl-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_5".dir   = "1_1_5";
  inputs."nimgl-1_1_5".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_5".ref   = "master";
  inputs."nimgl-1_1_5".repo  = "nimgl";
  inputs."nimgl-1_1_5".type  = "github";
  inputs."nimgl-1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_6".dir   = "1_1_6";
  inputs."nimgl-1_1_6".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_6".ref   = "master";
  inputs."nimgl-1_1_6".repo  = "nimgl";
  inputs."nimgl-1_1_6".type  = "github";
  inputs."nimgl-1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_7".dir   = "1_1_7";
  inputs."nimgl-1_1_7".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_7".ref   = "master";
  inputs."nimgl-1_1_7".repo  = "nimgl";
  inputs."nimgl-1_1_7".type  = "github";
  inputs."nimgl-1_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_8".dir   = "1_1_8";
  inputs."nimgl-1_1_8".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_8".ref   = "master";
  inputs."nimgl-1_1_8".repo  = "nimgl";
  inputs."nimgl-1_1_8".type  = "github";
  inputs."nimgl-1_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_1_9".dir   = "1_1_9";
  inputs."nimgl-1_1_9".owner = "nim-nix-pkgs";
  inputs."nimgl-1_1_9".ref   = "master";
  inputs."nimgl-1_1_9".repo  = "nimgl";
  inputs."nimgl-1_1_9".type  = "github";
  inputs."nimgl-1_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_2_0".dir   = "1_2_0";
  inputs."nimgl-1_2_0".owner = "nim-nix-pkgs";
  inputs."nimgl-1_2_0".ref   = "master";
  inputs."nimgl-1_2_0".repo  = "nimgl";
  inputs."nimgl-1_2_0".type  = "github";
  inputs."nimgl-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_3_0".dir   = "1_3_0";
  inputs."nimgl-1_3_0".owner = "nim-nix-pkgs";
  inputs."nimgl-1_3_0".ref   = "master";
  inputs."nimgl-1_3_0".repo  = "nimgl";
  inputs."nimgl-1_3_0".type  = "github";
  inputs."nimgl-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_3_1".dir   = "1_3_1";
  inputs."nimgl-1_3_1".owner = "nim-nix-pkgs";
  inputs."nimgl-1_3_1".ref   = "master";
  inputs."nimgl-1_3_1".repo  = "nimgl";
  inputs."nimgl-1_3_1".type  = "github";
  inputs."nimgl-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgl-1_3_2".dir   = "1_3_2";
  inputs."nimgl-1_3_2".owner = "nim-nix-pkgs";
  inputs."nimgl-1_3_2".ref   = "master";
  inputs."nimgl-1_3_2".repo  = "nimgl";
  inputs."nimgl-1_3_2".type  = "github";
  inputs."nimgl-1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgl-1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
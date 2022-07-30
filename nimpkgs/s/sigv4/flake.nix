{
  description = ''Amazon Web Services Signature Version 4'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sigv4-devel".dir   = "devel";
  inputs."sigv4-devel".owner = "nim-nix-pkgs";
  inputs."sigv4-devel".ref   = "master";
  inputs."sigv4-devel".repo  = "sigv4";
  inputs."sigv4-devel".type  = "github";
  inputs."sigv4-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-master".dir   = "master";
  inputs."sigv4-master".owner = "nim-nix-pkgs";
  inputs."sigv4-master".ref   = "master";
  inputs."sigv4-master".repo  = "sigv4";
  inputs."sigv4-master".type  = "github";
  inputs."sigv4-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_0".dir   = "1_0_0";
  inputs."sigv4-1_0_0".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_0".ref   = "master";
  inputs."sigv4-1_0_0".repo  = "sigv4";
  inputs."sigv4-1_0_0".type  = "github";
  inputs."sigv4-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_1".dir   = "1_0_1";
  inputs."sigv4-1_0_1".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_1".ref   = "master";
  inputs."sigv4-1_0_1".repo  = "sigv4";
  inputs."sigv4-1_0_1".type  = "github";
  inputs."sigv4-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_10".dir   = "1_0_10";
  inputs."sigv4-1_0_10".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_10".ref   = "master";
  inputs."sigv4-1_0_10".repo  = "sigv4";
  inputs."sigv4-1_0_10".type  = "github";
  inputs."sigv4-1_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_11".dir   = "1_0_11";
  inputs."sigv4-1_0_11".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_11".ref   = "master";
  inputs."sigv4-1_0_11".repo  = "sigv4";
  inputs."sigv4-1_0_11".type  = "github";
  inputs."sigv4-1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_12".dir   = "1_0_12";
  inputs."sigv4-1_0_12".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_12".ref   = "master";
  inputs."sigv4-1_0_12".repo  = "sigv4";
  inputs."sigv4-1_0_12".type  = "github";
  inputs."sigv4-1_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_13".dir   = "1_0_13";
  inputs."sigv4-1_0_13".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_13".ref   = "master";
  inputs."sigv4-1_0_13".repo  = "sigv4";
  inputs."sigv4-1_0_13".type  = "github";
  inputs."sigv4-1_0_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_2".dir   = "1_0_2";
  inputs."sigv4-1_0_2".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_2".ref   = "master";
  inputs."sigv4-1_0_2".repo  = "sigv4";
  inputs."sigv4-1_0_2".type  = "github";
  inputs."sigv4-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_3".dir   = "1_0_3";
  inputs."sigv4-1_0_3".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_3".ref   = "master";
  inputs."sigv4-1_0_3".repo  = "sigv4";
  inputs."sigv4-1_0_3".type  = "github";
  inputs."sigv4-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_4".dir   = "1_0_4";
  inputs."sigv4-1_0_4".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_4".ref   = "master";
  inputs."sigv4-1_0_4".repo  = "sigv4";
  inputs."sigv4-1_0_4".type  = "github";
  inputs."sigv4-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_5".dir   = "1_0_5";
  inputs."sigv4-1_0_5".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_5".ref   = "master";
  inputs."sigv4-1_0_5".repo  = "sigv4";
  inputs."sigv4-1_0_5".type  = "github";
  inputs."sigv4-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_6".dir   = "1_0_6";
  inputs."sigv4-1_0_6".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_6".ref   = "master";
  inputs."sigv4-1_0_6".repo  = "sigv4";
  inputs."sigv4-1_0_6".type  = "github";
  inputs."sigv4-1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_7".dir   = "1_0_7";
  inputs."sigv4-1_0_7".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_7".ref   = "master";
  inputs."sigv4-1_0_7".repo  = "sigv4";
  inputs."sigv4-1_0_7".type  = "github";
  inputs."sigv4-1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_8".dir   = "1_0_8";
  inputs."sigv4-1_0_8".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_8".ref   = "master";
  inputs."sigv4-1_0_8".repo  = "sigv4";
  inputs."sigv4-1_0_8".type  = "github";
  inputs."sigv4-1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_0_9".dir   = "1_0_9";
  inputs."sigv4-1_0_9".owner = "nim-nix-pkgs";
  inputs."sigv4-1_0_9".ref   = "master";
  inputs."sigv4-1_0_9".repo  = "sigv4";
  inputs."sigv4-1_0_9".type  = "github";
  inputs."sigv4-1_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_1_0".dir   = "1_1_0";
  inputs."sigv4-1_1_0".owner = "nim-nix-pkgs";
  inputs."sigv4-1_1_0".ref   = "master";
  inputs."sigv4-1_1_0".repo  = "sigv4";
  inputs."sigv4-1_1_0".type  = "github";
  inputs."sigv4-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_2_0".dir   = "1_2_0";
  inputs."sigv4-1_2_0".owner = "nim-nix-pkgs";
  inputs."sigv4-1_2_0".ref   = "master";
  inputs."sigv4-1_2_0".repo  = "sigv4";
  inputs."sigv4-1_2_0".type  = "github";
  inputs."sigv4-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_2_1".dir   = "1_2_1";
  inputs."sigv4-1_2_1".owner = "nim-nix-pkgs";
  inputs."sigv4-1_2_1".ref   = "master";
  inputs."sigv4-1_2_1".repo  = "sigv4";
  inputs."sigv4-1_2_1".type  = "github";
  inputs."sigv4-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_3_0".dir   = "1_3_0";
  inputs."sigv4-1_3_0".owner = "nim-nix-pkgs";
  inputs."sigv4-1_3_0".ref   = "master";
  inputs."sigv4-1_3_0".repo  = "sigv4";
  inputs."sigv4-1_3_0".type  = "github";
  inputs."sigv4-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sigv4-1_4_0".dir   = "1_4_0";
  inputs."sigv4-1_4_0".owner = "nim-nix-pkgs";
  inputs."sigv4-1_4_0".ref   = "master";
  inputs."sigv4-1_4_0".repo  = "sigv4";
  inputs."sigv4-1_4_0".type  = "github";
  inputs."sigv4-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sigv4-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
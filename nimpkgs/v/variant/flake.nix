{
  description = ''Variant type and type matching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."variant-master".dir   = "master";
  inputs."variant-master".owner = "nim-nix-pkgs";
  inputs."variant-master".ref   = "master";
  inputs."variant-master".repo  = "variant";
  inputs."variant-master".type  = "github";
  inputs."variant-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2".dir   = "v0_2";
  inputs."variant-v0_2".owner = "nim-nix-pkgs";
  inputs."variant-v0_2".ref   = "master";
  inputs."variant-v0_2".repo  = "variant";
  inputs."variant-v0_2".type  = "github";
  inputs."variant-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_1".dir   = "v0_2_1";
  inputs."variant-v0_2_1".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_1".ref   = "master";
  inputs."variant-v0_2_1".repo  = "variant";
  inputs."variant-v0_2_1".type  = "github";
  inputs."variant-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_10".dir   = "v0_2_10";
  inputs."variant-v0_2_10".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_10".ref   = "master";
  inputs."variant-v0_2_10".repo  = "variant";
  inputs."variant-v0_2_10".type  = "github";
  inputs."variant-v0_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_11".dir   = "v0_2_11";
  inputs."variant-v0_2_11".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_11".ref   = "master";
  inputs."variant-v0_2_11".repo  = "variant";
  inputs."variant-v0_2_11".type  = "github";
  inputs."variant-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_12".dir   = "v0_2_12";
  inputs."variant-v0_2_12".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_12".ref   = "master";
  inputs."variant-v0_2_12".repo  = "variant";
  inputs."variant-v0_2_12".type  = "github";
  inputs."variant-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_2".dir   = "v0_2_2";
  inputs."variant-v0_2_2".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_2".ref   = "master";
  inputs."variant-v0_2_2".repo  = "variant";
  inputs."variant-v0_2_2".type  = "github";
  inputs."variant-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_3".dir   = "v0_2_3";
  inputs."variant-v0_2_3".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_3".ref   = "master";
  inputs."variant-v0_2_3".repo  = "variant";
  inputs."variant-v0_2_3".type  = "github";
  inputs."variant-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_4".dir   = "v0_2_4";
  inputs."variant-v0_2_4".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_4".ref   = "master";
  inputs."variant-v0_2_4".repo  = "variant";
  inputs."variant-v0_2_4".type  = "github";
  inputs."variant-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_5".dir   = "v0_2_5";
  inputs."variant-v0_2_5".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_5".ref   = "master";
  inputs."variant-v0_2_5".repo  = "variant";
  inputs."variant-v0_2_5".type  = "github";
  inputs."variant-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_6".dir   = "v0_2_6";
  inputs."variant-v0_2_6".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_6".ref   = "master";
  inputs."variant-v0_2_6".repo  = "variant";
  inputs."variant-v0_2_6".type  = "github";
  inputs."variant-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_7".dir   = "v0_2_7";
  inputs."variant-v0_2_7".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_7".ref   = "master";
  inputs."variant-v0_2_7".repo  = "variant";
  inputs."variant-v0_2_7".type  = "github";
  inputs."variant-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_8".dir   = "v0_2_8";
  inputs."variant-v0_2_8".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_8".ref   = "master";
  inputs."variant-v0_2_8".repo  = "variant";
  inputs."variant-v0_2_8".type  = "github";
  inputs."variant-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variant-v0_2_9".dir   = "v0_2_9";
  inputs."variant-v0_2_9".owner = "nim-nix-pkgs";
  inputs."variant-v0_2_9".ref   = "master";
  inputs."variant-v0_2_9".repo  = "variant";
  inputs."variant-v0_2_9".type  = "github";
  inputs."variant-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variant-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
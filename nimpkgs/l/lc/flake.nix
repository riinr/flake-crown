{
  description = ''A post-modern, "multi-dimensional" configurable ls/file lister'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lc-master".dir   = "master";
  inputs."lc-master".owner = "nim-nix-pkgs";
  inputs."lc-master".ref   = "master";
  inputs."lc-master".repo  = "lc";
  inputs."lc-master".type  = "github";
  inputs."lc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_2".dir   = "v0_2";
  inputs."lc-v0_2".owner = "nim-nix-pkgs";
  inputs."lc-v0_2".ref   = "master";
  inputs."lc-v0_2".repo  = "lc";
  inputs."lc-v0_2".type  = "github";
  inputs."lc-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_3".dir   = "v0_3";
  inputs."lc-v0_3".owner = "nim-nix-pkgs";
  inputs."lc-v0_3".ref   = "master";
  inputs."lc-v0_3".repo  = "lc";
  inputs."lc-v0_3".type  = "github";
  inputs."lc-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_4".dir   = "v0_4";
  inputs."lc-v0_4".owner = "nim-nix-pkgs";
  inputs."lc-v0_4".ref   = "master";
  inputs."lc-v0_4".repo  = "lc";
  inputs."lc-v0_4".type  = "github";
  inputs."lc-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_5".dir   = "v0_5";
  inputs."lc-v0_5".owner = "nim-nix-pkgs";
  inputs."lc-v0_5".ref   = "master";
  inputs."lc-v0_5".repo  = "lc";
  inputs."lc-v0_5".type  = "github";
  inputs."lc-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_6".dir   = "v0_6";
  inputs."lc-v0_6".owner = "nim-nix-pkgs";
  inputs."lc-v0_6".ref   = "master";
  inputs."lc-v0_6".repo  = "lc";
  inputs."lc-v0_6".type  = "github";
  inputs."lc-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_7".dir   = "v0_7";
  inputs."lc-v0_7".owner = "nim-nix-pkgs";
  inputs."lc-v0_7".ref   = "master";
  inputs."lc-v0_7".repo  = "lc";
  inputs."lc-v0_7".type  = "github";
  inputs."lc-v0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_8".dir   = "v0_8";
  inputs."lc-v0_8".owner = "nim-nix-pkgs";
  inputs."lc-v0_8".ref   = "master";
  inputs."lc-v0_8".repo  = "lc";
  inputs."lc-v0_8".type  = "github";
  inputs."lc-v0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_8_1".dir   = "v0_8_1";
  inputs."lc-v0_8_1".owner = "nim-nix-pkgs";
  inputs."lc-v0_8_1".ref   = "master";
  inputs."lc-v0_8_1".repo  = "lc";
  inputs."lc-v0_8_1".type  = "github";
  inputs."lc-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lc-v0_9_0".dir   = "v0_9_0";
  inputs."lc-v0_9_0".owner = "nim-nix-pkgs";
  inputs."lc-v0_9_0".ref   = "master";
  inputs."lc-v0_9_0".repo  = "lc";
  inputs."lc-v0_9_0".type  = "github";
  inputs."lc-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lc-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
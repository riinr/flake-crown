{
  description = ''Lock-free threadsafe MPMC with high throughput'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."loony-main".dir   = "main";
  inputs."loony-main".owner = "nim-nix-pkgs";
  inputs."loony-main".ref   = "master";
  inputs."loony-main".repo  = "loony";
  inputs."loony-main".type  = "github";
  inputs."loony-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_0".dir   = "0_1_0";
  inputs."loony-0_1_0".owner = "nim-nix-pkgs";
  inputs."loony-0_1_0".ref   = "master";
  inputs."loony-0_1_0".repo  = "loony";
  inputs."loony-0_1_0".type  = "github";
  inputs."loony-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_1".dir   = "0_1_1";
  inputs."loony-0_1_1".owner = "nim-nix-pkgs";
  inputs."loony-0_1_1".ref   = "master";
  inputs."loony-0_1_1".repo  = "loony";
  inputs."loony-0_1_1".type  = "github";
  inputs."loony-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_10".dir   = "0_1_10";
  inputs."loony-0_1_10".owner = "nim-nix-pkgs";
  inputs."loony-0_1_10".ref   = "master";
  inputs."loony-0_1_10".repo  = "loony";
  inputs."loony-0_1_10".type  = "github";
  inputs."loony-0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_11".dir   = "0_1_11";
  inputs."loony-0_1_11".owner = "nim-nix-pkgs";
  inputs."loony-0_1_11".ref   = "master";
  inputs."loony-0_1_11".repo  = "loony";
  inputs."loony-0_1_11".type  = "github";
  inputs."loony-0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_12".dir   = "0_1_12";
  inputs."loony-0_1_12".owner = "nim-nix-pkgs";
  inputs."loony-0_1_12".ref   = "master";
  inputs."loony-0_1_12".repo  = "loony";
  inputs."loony-0_1_12".type  = "github";
  inputs."loony-0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_2".dir   = "0_1_2";
  inputs."loony-0_1_2".owner = "nim-nix-pkgs";
  inputs."loony-0_1_2".ref   = "master";
  inputs."loony-0_1_2".repo  = "loony";
  inputs."loony-0_1_2".type  = "github";
  inputs."loony-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_3".dir   = "0_1_3";
  inputs."loony-0_1_3".owner = "nim-nix-pkgs";
  inputs."loony-0_1_3".ref   = "master";
  inputs."loony-0_1_3".repo  = "loony";
  inputs."loony-0_1_3".type  = "github";
  inputs."loony-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_5".dir   = "0_1_5";
  inputs."loony-0_1_5".owner = "nim-nix-pkgs";
  inputs."loony-0_1_5".ref   = "master";
  inputs."loony-0_1_5".repo  = "loony";
  inputs."loony-0_1_5".type  = "github";
  inputs."loony-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_6".dir   = "0_1_6";
  inputs."loony-0_1_6".owner = "nim-nix-pkgs";
  inputs."loony-0_1_6".ref   = "master";
  inputs."loony-0_1_6".repo  = "loony";
  inputs."loony-0_1_6".type  = "github";
  inputs."loony-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_7".dir   = "0_1_7";
  inputs."loony-0_1_7".owner = "nim-nix-pkgs";
  inputs."loony-0_1_7".ref   = "master";
  inputs."loony-0_1_7".repo  = "loony";
  inputs."loony-0_1_7".type  = "github";
  inputs."loony-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_8".dir   = "0_1_8";
  inputs."loony-0_1_8".owner = "nim-nix-pkgs";
  inputs."loony-0_1_8".ref   = "master";
  inputs."loony-0_1_8".repo  = "loony";
  inputs."loony-0_1_8".type  = "github";
  inputs."loony-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."loony-0_1_9".dir   = "0_1_9";
  inputs."loony-0_1_9".owner = "nim-nix-pkgs";
  inputs."loony-0_1_9".ref   = "master";
  inputs."loony-0_1_9".repo  = "loony";
  inputs."loony-0_1_9".type  = "github";
  inputs."loony-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."loony-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
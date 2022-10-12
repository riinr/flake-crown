{
  description = ''A simple code generation library for other programming languages!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."codegenlib-master".dir   = "master";
  inputs."codegenlib-master".owner = "nim-nix-pkgs";
  inputs."codegenlib-master".ref   = "master";
  inputs."codegenlib-master".repo  = "codegenlib";
  inputs."codegenlib-master".type  = "github";
  inputs."codegenlib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_0_0".dir   = "v1_0_0";
  inputs."codegenlib-v1_0_0".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_0_0".ref   = "master";
  inputs."codegenlib-v1_0_0".repo  = "codegenlib";
  inputs."codegenlib-v1_0_0".type  = "github";
  inputs."codegenlib-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_0_1".dir   = "v1_0_1";
  inputs."codegenlib-v1_0_1".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_0_1".ref   = "master";
  inputs."codegenlib-v1_0_1".repo  = "codegenlib";
  inputs."codegenlib-v1_0_1".type  = "github";
  inputs."codegenlib-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_0_2".dir   = "v1_0_2";
  inputs."codegenlib-v1_0_2".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_0_2".ref   = "master";
  inputs."codegenlib-v1_0_2".repo  = "codegenlib";
  inputs."codegenlib-v1_0_2".type  = "github";
  inputs."codegenlib-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_0_3".dir   = "v1_0_3";
  inputs."codegenlib-v1_0_3".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_0_3".ref   = "master";
  inputs."codegenlib-v1_0_3".repo  = "codegenlib";
  inputs."codegenlib-v1_0_3".type  = "github";
  inputs."codegenlib-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_0_4".dir   = "v1_0_4";
  inputs."codegenlib-v1_0_4".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_0_4".ref   = "master";
  inputs."codegenlib-v1_0_4".repo  = "codegenlib";
  inputs."codegenlib-v1_0_4".type  = "github";
  inputs."codegenlib-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_0_5".dir   = "v1_0_5";
  inputs."codegenlib-v1_0_5".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_0_5".ref   = "master";
  inputs."codegenlib-v1_0_5".repo  = "codegenlib";
  inputs."codegenlib-v1_0_5".type  = "github";
  inputs."codegenlib-v1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_1_0".dir   = "v1_1_0";
  inputs."codegenlib-v1_1_0".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_1_0".ref   = "master";
  inputs."codegenlib-v1_1_0".repo  = "codegenlib";
  inputs."codegenlib-v1_1_0".type  = "github";
  inputs."codegenlib-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_1_1".dir   = "v1_1_1";
  inputs."codegenlib-v1_1_1".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_1_1".ref   = "master";
  inputs."codegenlib-v1_1_1".repo  = "codegenlib";
  inputs."codegenlib-v1_1_1".type  = "github";
  inputs."codegenlib-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_1_10".dir   = "v1_1_10";
  inputs."codegenlib-v1_1_10".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_1_10".ref   = "master";
  inputs."codegenlib-v1_1_10".repo  = "codegenlib";
  inputs."codegenlib-v1_1_10".type  = "github";
  inputs."codegenlib-v1_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_1_2".dir   = "v1_1_2";
  inputs."codegenlib-v1_1_2".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_1_2".ref   = "master";
  inputs."codegenlib-v1_1_2".repo  = "codegenlib";
  inputs."codegenlib-v1_1_2".type  = "github";
  inputs."codegenlib-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_1_4".dir   = "v1_1_4";
  inputs."codegenlib-v1_1_4".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_1_4".ref   = "master";
  inputs."codegenlib-v1_1_4".repo  = "codegenlib";
  inputs."codegenlib-v1_1_4".type  = "github";
  inputs."codegenlib-v1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_1_5".dir   = "v1_1_5";
  inputs."codegenlib-v1_1_5".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_1_5".ref   = "master";
  inputs."codegenlib-v1_1_5".repo  = "codegenlib";
  inputs."codegenlib-v1_1_5".type  = "github";
  inputs."codegenlib-v1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_1_6".dir   = "v1_1_6";
  inputs."codegenlib-v1_1_6".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_1_6".ref   = "master";
  inputs."codegenlib-v1_1_6".repo  = "codegenlib";
  inputs."codegenlib-v1_1_6".type  = "github";
  inputs."codegenlib-v1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_1_7".dir   = "v1_1_7";
  inputs."codegenlib-v1_1_7".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_1_7".ref   = "master";
  inputs."codegenlib-v1_1_7".repo  = "codegenlib";
  inputs."codegenlib-v1_1_7".type  = "github";
  inputs."codegenlib-v1_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_1_8".dir   = "v1_1_8";
  inputs."codegenlib-v1_1_8".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_1_8".ref   = "master";
  inputs."codegenlib-v1_1_8".repo  = "codegenlib";
  inputs."codegenlib-v1_1_8".type  = "github";
  inputs."codegenlib-v1_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_1_9".dir   = "v1_1_9";
  inputs."codegenlib-v1_1_9".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_1_9".ref   = "master";
  inputs."codegenlib-v1_1_9".repo  = "codegenlib";
  inputs."codegenlib-v1_1_9".type  = "github";
  inputs."codegenlib-v1_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Pleasant Nim bindings for SIMD instruction sets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsimd-master".dir   = "master";
  inputs."nimsimd-master".owner = "nim-nix-pkgs";
  inputs."nimsimd-master".ref   = "master";
  inputs."nimsimd-master".repo  = "nimsimd";
  inputs."nimsimd-master".type  = "github";
  inputs."nimsimd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_0".dir   = "0_4_0";
  inputs."nimsimd-0_4_0".owner = "nim-nix-pkgs";
  inputs."nimsimd-0_4_0".ref   = "master";
  inputs."nimsimd-0_4_0".repo  = "nimsimd";
  inputs."nimsimd-0_4_0".type  = "github";
  inputs."nimsimd-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_1".dir   = "0_4_1";
  inputs."nimsimd-0_4_1".owner = "nim-nix-pkgs";
  inputs."nimsimd-0_4_1".ref   = "master";
  inputs."nimsimd-0_4_1".repo  = "nimsimd";
  inputs."nimsimd-0_4_1".type  = "github";
  inputs."nimsimd-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_2".dir   = "0_4_2";
  inputs."nimsimd-0_4_2".owner = "nim-nix-pkgs";
  inputs."nimsimd-0_4_2".ref   = "master";
  inputs."nimsimd-0_4_2".repo  = "nimsimd";
  inputs."nimsimd-0_4_2".type  = "github";
  inputs."nimsimd-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_3".dir   = "0_4_3";
  inputs."nimsimd-0_4_3".owner = "nim-nix-pkgs";
  inputs."nimsimd-0_4_3".ref   = "master";
  inputs."nimsimd-0_4_3".repo  = "nimsimd";
  inputs."nimsimd-0_4_3".type  = "github";
  inputs."nimsimd-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_4".dir   = "0_4_4";
  inputs."nimsimd-0_4_4".owner = "nim-nix-pkgs";
  inputs."nimsimd-0_4_4".ref   = "master";
  inputs."nimsimd-0_4_4".repo  = "nimsimd";
  inputs."nimsimd-0_4_4".type  = "github";
  inputs."nimsimd-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_5".dir   = "0_4_5";
  inputs."nimsimd-0_4_5".owner = "nim-nix-pkgs";
  inputs."nimsimd-0_4_5".ref   = "master";
  inputs."nimsimd-0_4_5".repo  = "nimsimd";
  inputs."nimsimd-0_4_5".type  = "github";
  inputs."nimsimd-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_6".dir   = "0_4_6";
  inputs."nimsimd-0_4_6".owner = "nim-nix-pkgs";
  inputs."nimsimd-0_4_6".ref   = "master";
  inputs."nimsimd-0_4_6".repo  = "nimsimd";
  inputs."nimsimd-0_4_6".type  = "github";
  inputs."nimsimd-0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_7".dir   = "0_4_7";
  inputs."nimsimd-0_4_7".owner = "nim-nix-pkgs";
  inputs."nimsimd-0_4_7".ref   = "master";
  inputs."nimsimd-0_4_7".repo  = "nimsimd";
  inputs."nimsimd-0_4_7".type  = "github";
  inputs."nimsimd-0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_8".dir   = "0_4_8";
  inputs."nimsimd-0_4_8".owner = "nim-nix-pkgs";
  inputs."nimsimd-0_4_8".ref   = "master";
  inputs."nimsimd-0_4_8".repo  = "nimsimd";
  inputs."nimsimd-0_4_8".type  = "github";
  inputs."nimsimd-0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-0_4_9".dir   = "0_4_9";
  inputs."nimsimd-0_4_9".owner = "nim-nix-pkgs";
  inputs."nimsimd-0_4_9".ref   = "master";
  inputs."nimsimd-0_4_9".repo  = "nimsimd";
  inputs."nimsimd-0_4_9".type  = "github";
  inputs."nimsimd-0_4_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-0_4_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsimd-1_0_0".dir   = "1_0_0";
  inputs."nimsimd-1_0_0".owner = "nim-nix-pkgs";
  inputs."nimsimd-1_0_0".ref   = "master";
  inputs."nimsimd-1_0_0".repo  = "nimsimd";
  inputs."nimsimd-1_0_0".type  = "github";
  inputs."nimsimd-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A safe, high-level, optimized OpenGL wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."aglet-master".dir   = "master";
  inputs."aglet-master".owner = "nim-nix-pkgs";
  inputs."aglet-master".ref   = "master";
  inputs."aglet-master".repo  = "aglet";
  inputs."aglet-master".type  = "github";
  inputs."aglet-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_1_0".dir   = "0_1_0";
  inputs."aglet-0_1_0".owner = "nim-nix-pkgs";
  inputs."aglet-0_1_0".ref   = "master";
  inputs."aglet-0_1_0".repo  = "aglet";
  inputs."aglet-0_1_0".type  = "github";
  inputs."aglet-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_2_0".dir   = "0_2_0";
  inputs."aglet-0_2_0".owner = "nim-nix-pkgs";
  inputs."aglet-0_2_0".ref   = "master";
  inputs."aglet-0_2_0".repo  = "aglet";
  inputs."aglet-0_2_0".type  = "github";
  inputs."aglet-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_2_1".dir   = "0_2_1";
  inputs."aglet-0_2_1".owner = "nim-nix-pkgs";
  inputs."aglet-0_2_1".ref   = "master";
  inputs."aglet-0_2_1".repo  = "aglet";
  inputs."aglet-0_2_1".type  = "github";
  inputs."aglet-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_3_0".dir   = "0_3_0";
  inputs."aglet-0_3_0".owner = "nim-nix-pkgs";
  inputs."aglet-0_3_0".ref   = "master";
  inputs."aglet-0_3_0".repo  = "aglet";
  inputs."aglet-0_3_0".type  = "github";
  inputs."aglet-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_3_1".dir   = "0_3_1";
  inputs."aglet-0_3_1".owner = "nim-nix-pkgs";
  inputs."aglet-0_3_1".ref   = "master";
  inputs."aglet-0_3_1".repo  = "aglet";
  inputs."aglet-0_3_1".type  = "github";
  inputs."aglet-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_3_2".dir   = "0_3_2";
  inputs."aglet-0_3_2".owner = "nim-nix-pkgs";
  inputs."aglet-0_3_2".ref   = "master";
  inputs."aglet-0_3_2".repo  = "aglet";
  inputs."aglet-0_3_2".type  = "github";
  inputs."aglet-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_3_3".dir   = "0_3_3";
  inputs."aglet-0_3_3".owner = "nim-nix-pkgs";
  inputs."aglet-0_3_3".ref   = "master";
  inputs."aglet-0_3_3".repo  = "aglet";
  inputs."aglet-0_3_3".type  = "github";
  inputs."aglet-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_4_0".dir   = "0_4_0";
  inputs."aglet-0_4_0".owner = "nim-nix-pkgs";
  inputs."aglet-0_4_0".ref   = "master";
  inputs."aglet-0_4_0".repo  = "aglet";
  inputs."aglet-0_4_0".type  = "github";
  inputs."aglet-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_4_1".dir   = "0_4_1";
  inputs."aglet-0_4_1".owner = "nim-nix-pkgs";
  inputs."aglet-0_4_1".ref   = "master";
  inputs."aglet-0_4_1".repo  = "aglet";
  inputs."aglet-0_4_1".type  = "github";
  inputs."aglet-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_4_2".dir   = "0_4_2";
  inputs."aglet-0_4_2".owner = "nim-nix-pkgs";
  inputs."aglet-0_4_2".ref   = "master";
  inputs."aglet-0_4_2".repo  = "aglet";
  inputs."aglet-0_4_2".type  = "github";
  inputs."aglet-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_4_3".dir   = "0_4_3";
  inputs."aglet-0_4_3".owner = "nim-nix-pkgs";
  inputs."aglet-0_4_3".ref   = "master";
  inputs."aglet-0_4_3".repo  = "aglet";
  inputs."aglet-0_4_3".type  = "github";
  inputs."aglet-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."aglet-0_4_4".dir   = "0_4_4";
  inputs."aglet-0_4_4".owner = "nim-nix-pkgs";
  inputs."aglet-0_4_4".ref   = "master";
  inputs."aglet-0_4_4".repo  = "aglet";
  inputs."aglet-0_4_4".type  = "github";
  inputs."aglet-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."aglet-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A Nim mini DSL to execute shell commands'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shell-master".dir   = "master";
  inputs."shell-master".owner = "nim-nix-pkgs";
  inputs."shell-master".ref   = "master";
  inputs."shell-master".repo  = "shell";
  inputs."shell-master".type  = "github";
  inputs."shell-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_1_0".dir   = "v0_1_0";
  inputs."shell-v0_1_0".owner = "nim-nix-pkgs";
  inputs."shell-v0_1_0".ref   = "master";
  inputs."shell-v0_1_0".repo  = "shell";
  inputs."shell-v0_1_0".type  = "github";
  inputs."shell-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_1_1".dir   = "v0_1_1";
  inputs."shell-v0_1_1".owner = "nim-nix-pkgs";
  inputs."shell-v0_1_1".ref   = "master";
  inputs."shell-v0_1_1".repo  = "shell";
  inputs."shell-v0_1_1".type  = "github";
  inputs."shell-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_1_2".dir   = "v0_1_2";
  inputs."shell-v0_1_2".owner = "nim-nix-pkgs";
  inputs."shell-v0_1_2".ref   = "master";
  inputs."shell-v0_1_2".repo  = "shell";
  inputs."shell-v0_1_2".type  = "github";
  inputs."shell-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_1_3".dir   = "v0_1_3";
  inputs."shell-v0_1_3".owner = "nim-nix-pkgs";
  inputs."shell-v0_1_3".ref   = "master";
  inputs."shell-v0_1_3".repo  = "shell";
  inputs."shell-v0_1_3".type  = "github";
  inputs."shell-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_2_0".dir   = "v0_2_0";
  inputs."shell-v0_2_0".owner = "nim-nix-pkgs";
  inputs."shell-v0_2_0".ref   = "master";
  inputs."shell-v0_2_0".repo  = "shell";
  inputs."shell-v0_2_0".type  = "github";
  inputs."shell-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_2_1".dir   = "v0_2_1";
  inputs."shell-v0_2_1".owner = "nim-nix-pkgs";
  inputs."shell-v0_2_1".ref   = "master";
  inputs."shell-v0_2_1".repo  = "shell";
  inputs."shell-v0_2_1".type  = "github";
  inputs."shell-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_2_2".dir   = "v0_2_2";
  inputs."shell-v0_2_2".owner = "nim-nix-pkgs";
  inputs."shell-v0_2_2".ref   = "master";
  inputs."shell-v0_2_2".repo  = "shell";
  inputs."shell-v0_2_2".type  = "github";
  inputs."shell-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_2_3".dir   = "v0_2_3";
  inputs."shell-v0_2_3".owner = "nim-nix-pkgs";
  inputs."shell-v0_2_3".ref   = "master";
  inputs."shell-v0_2_3".repo  = "shell";
  inputs."shell-v0_2_3".type  = "github";
  inputs."shell-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_3_0".dir   = "v0_3_0";
  inputs."shell-v0_3_0".owner = "nim-nix-pkgs";
  inputs."shell-v0_3_0".ref   = "master";
  inputs."shell-v0_3_0".repo  = "shell";
  inputs."shell-v0_3_0".type  = "github";
  inputs."shell-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_4_0".dir   = "v0_4_0";
  inputs."shell-v0_4_0".owner = "nim-nix-pkgs";
  inputs."shell-v0_4_0".ref   = "master";
  inputs."shell-v0_4_0".repo  = "shell";
  inputs."shell-v0_4_0".type  = "github";
  inputs."shell-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_4_1".dir   = "v0_4_1";
  inputs."shell-v0_4_1".owner = "nim-nix-pkgs";
  inputs."shell-v0_4_1".ref   = "master";
  inputs."shell-v0_4_1".repo  = "shell";
  inputs."shell-v0_4_1".type  = "github";
  inputs."shell-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_4_2".dir   = "v0_4_2";
  inputs."shell-v0_4_2".owner = "nim-nix-pkgs";
  inputs."shell-v0_4_2".ref   = "master";
  inputs."shell-v0_4_2".repo  = "shell";
  inputs."shell-v0_4_2".type  = "github";
  inputs."shell-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_4_3".dir   = "v0_4_3";
  inputs."shell-v0_4_3".owner = "nim-nix-pkgs";
  inputs."shell-v0_4_3".ref   = "master";
  inputs."shell-v0_4_3".repo  = "shell";
  inputs."shell-v0_4_3".type  = "github";
  inputs."shell-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shell-v0_4_4".dir   = "v0_4_4";
  inputs."shell-v0_4_4".owner = "nim-nix-pkgs";
  inputs."shell-v0_4_4".ref   = "master";
  inputs."shell-v0_4_4".repo  = "shell";
  inputs."shell-v0_4_4".type  = "github";
  inputs."shell-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
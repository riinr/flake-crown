{
  description = ''Wrapper-less C/C++ interop for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimline-master".dir   = "master";
  inputs."nimline-master".owner = "nim-nix-pkgs";
  inputs."nimline-master".ref   = "master";
  inputs."nimline-master".repo  = "nimline";
  inputs."nimline-master".type  = "github";
  inputs."nimline-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-0_1_1".dir   = "0_1_1";
  inputs."nimline-0_1_1".owner = "nim-nix-pkgs";
  inputs."nimline-0_1_1".ref   = "master";
  inputs."nimline-0_1_1".repo  = "nimline";
  inputs."nimline-0_1_1".type  = "github";
  inputs."nimline-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-0_1_3".dir   = "0_1_3";
  inputs."nimline-0_1_3".owner = "nim-nix-pkgs";
  inputs."nimline-0_1_3".ref   = "master";
  inputs."nimline-0_1_3".repo  = "nimline";
  inputs."nimline-0_1_3".type  = "github";
  inputs."nimline-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_0".dir   = "v0_1_0";
  inputs."nimline-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimline-v0_1_0".ref   = "master";
  inputs."nimline-v0_1_0".repo  = "nimline";
  inputs."nimline-v0_1_0".type  = "github";
  inputs."nimline-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_1".dir   = "v0_1_1";
  inputs."nimline-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimline-v0_1_1".ref   = "master";
  inputs."nimline-v0_1_1".repo  = "nimline";
  inputs."nimline-v0_1_1".type  = "github";
  inputs."nimline-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_2".dir   = "v0_1_2";
  inputs."nimline-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimline-v0_1_2".ref   = "master";
  inputs."nimline-v0_1_2".repo  = "nimline";
  inputs."nimline-v0_1_2".type  = "github";
  inputs."nimline-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_3".dir   = "v0_1_3";
  inputs."nimline-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimline-v0_1_3".ref   = "master";
  inputs."nimline-v0_1_3".repo  = "nimline";
  inputs."nimline-v0_1_3".type  = "github";
  inputs."nimline-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_4".dir   = "v0_1_4";
  inputs."nimline-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimline-v0_1_4".ref   = "master";
  inputs."nimline-v0_1_4".repo  = "nimline";
  inputs."nimline-v0_1_4".type  = "github";
  inputs."nimline-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_5".dir   = "v0_1_5";
  inputs."nimline-v0_1_5".owner = "nim-nix-pkgs";
  inputs."nimline-v0_1_5".ref   = "master";
  inputs."nimline-v0_1_5".repo  = "nimline";
  inputs."nimline-v0_1_5".type  = "github";
  inputs."nimline-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_6".dir   = "v0_1_6";
  inputs."nimline-v0_1_6".owner = "nim-nix-pkgs";
  inputs."nimline-v0_1_6".ref   = "master";
  inputs."nimline-v0_1_6".repo  = "nimline";
  inputs."nimline-v0_1_6".type  = "github";
  inputs."nimline-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimline-v0_1_7".dir   = "v0_1_7";
  inputs."nimline-v0_1_7".owner = "nim-nix-pkgs";
  inputs."nimline-v0_1_7".ref   = "master";
  inputs."nimline-v0_1_7".repo  = "nimline";
  inputs."nimline-v0_1_7".type  = "github";
  inputs."nimline-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimline-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
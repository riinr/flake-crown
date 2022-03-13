{
  description = ''Print is a set of pretty print macros, useful for print-debugging.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."print-master".dir   = "master";
  inputs."print-master".owner = "nim-nix-pkgs";
  inputs."print-master".ref   = "master";
  inputs."print-master".repo  = "print";
  inputs."print-master".type  = "github";
  inputs."print-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-0_1_0".dir   = "0_1_0";
  inputs."print-0_1_0".owner = "nim-nix-pkgs";
  inputs."print-0_1_0".ref   = "master";
  inputs."print-0_1_0".repo  = "print";
  inputs."print-0_1_0".type  = "github";
  inputs."print-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-0_2_0".dir   = "0_2_0";
  inputs."print-0_2_0".owner = "nim-nix-pkgs";
  inputs."print-0_2_0".ref   = "master";
  inputs."print-0_2_0".repo  = "print";
  inputs."print-0_2_0".type  = "github";
  inputs."print-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-1_0_0".dir   = "1_0_0";
  inputs."print-1_0_0".owner = "nim-nix-pkgs";
  inputs."print-1_0_0".ref   = "master";
  inputs."print-1_0_0".repo  = "print";
  inputs."print-1_0_0".type  = "github";
  inputs."print-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-1_0_1".dir   = "1_0_1";
  inputs."print-1_0_1".owner = "nim-nix-pkgs";
  inputs."print-1_0_1".ref   = "master";
  inputs."print-1_0_1".repo  = "print";
  inputs."print-1_0_1".type  = "github";
  inputs."print-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-1_0_2".dir   = "1_0_2";
  inputs."print-1_0_2".owner = "nim-nix-pkgs";
  inputs."print-1_0_2".ref   = "master";
  inputs."print-1_0_2".repo  = "print";
  inputs."print-1_0_2".type  = "github";
  inputs."print-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print-v0_1_0".dir   = "v0_1_0";
  inputs."print-v0_1_0".owner = "nim-nix-pkgs";
  inputs."print-v0_1_0".ref   = "master";
  inputs."print-v0_1_0".repo  = "print";
  inputs."print-v0_1_0".type  = "github";
  inputs."print-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
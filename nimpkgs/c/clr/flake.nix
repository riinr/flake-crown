{
  description = ''Get information about colors and convert them in the command line'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."clr-master".dir   = "master";
  inputs."clr-master".owner = "nim-nix-pkgs";
  inputs."clr-master".ref   = "master";
  inputs."clr-master".repo  = "clr";
  inputs."clr-master".type  = "github";
  inputs."clr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clr-v0_1_0".dir   = "v0_1_0";
  inputs."clr-v0_1_0".owner = "nim-nix-pkgs";
  inputs."clr-v0_1_0".ref   = "master";
  inputs."clr-v0_1_0".repo  = "clr";
  inputs."clr-v0_1_0".type  = "github";
  inputs."clr-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clr-v0_1_1".dir   = "v0_1_1";
  inputs."clr-v0_1_1".owner = "nim-nix-pkgs";
  inputs."clr-v0_1_1".ref   = "master";
  inputs."clr-v0_1_1".repo  = "clr";
  inputs."clr-v0_1_1".type  = "github";
  inputs."clr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clr-v0_1_2".dir   = "v0_1_2";
  inputs."clr-v0_1_2".owner = "nim-nix-pkgs";
  inputs."clr-v0_1_2".ref   = "master";
  inputs."clr-v0_1_2".repo  = "clr";
  inputs."clr-v0_1_2".type  = "github";
  inputs."clr-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clr-v0_1_3".dir   = "v0_1_3";
  inputs."clr-v0_1_3".owner = "nim-nix-pkgs";
  inputs."clr-v0_1_3".ref   = "master";
  inputs."clr-v0_1_3".repo  = "clr";
  inputs."clr-v0_1_3".type  = "github";
  inputs."clr-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clr-v1_0_0".dir   = "v1_0_0";
  inputs."clr-v1_0_0".owner = "nim-nix-pkgs";
  inputs."clr-v1_0_0".ref   = "master";
  inputs."clr-v1_0_0".repo  = "clr";
  inputs."clr-v1_0_0".type  = "github";
  inputs."clr-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clr-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
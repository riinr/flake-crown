{
  description = ''"pointers" to cached AST that instantiate routines when called'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."applicates-master".dir   = "master";
  inputs."applicates-master".owner = "nim-nix-pkgs";
  inputs."applicates-master".ref   = "master";
  inputs."applicates-master".repo  = "applicates";
  inputs."applicates-master".type  = "github";
  inputs."applicates-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-0_1_1".dir   = "0_1_1";
  inputs."applicates-0_1_1".owner = "nim-nix-pkgs";
  inputs."applicates-0_1_1".ref   = "master";
  inputs."applicates-0_1_1".repo  = "applicates";
  inputs."applicates-0_1_1".type  = "github";
  inputs."applicates-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-v0_1_0".dir   = "v0_1_0";
  inputs."applicates-v0_1_0".owner = "nim-nix-pkgs";
  inputs."applicates-v0_1_0".ref   = "master";
  inputs."applicates-v0_1_0".repo  = "applicates";
  inputs."applicates-v0_1_0".type  = "github";
  inputs."applicates-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-v0_1_1".dir   = "v0_1_1";
  inputs."applicates-v0_1_1".owner = "nim-nix-pkgs";
  inputs."applicates-v0_1_1".ref   = "master";
  inputs."applicates-v0_1_1".repo  = "applicates";
  inputs."applicates-v0_1_1".type  = "github";
  inputs."applicates-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-v0_2_0".dir   = "v0_2_0";
  inputs."applicates-v0_2_0".owner = "nim-nix-pkgs";
  inputs."applicates-v0_2_0".ref   = "master";
  inputs."applicates-v0_2_0".repo  = "applicates";
  inputs."applicates-v0_2_0".type  = "github";
  inputs."applicates-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-v0_3_0".dir   = "v0_3_0";
  inputs."applicates-v0_3_0".owner = "nim-nix-pkgs";
  inputs."applicates-v0_3_0".ref   = "master";
  inputs."applicates-v0_3_0".repo  = "applicates";
  inputs."applicates-v0_3_0".type  = "github";
  inputs."applicates-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."applicates-v0_3_1".dir   = "v0_3_1";
  inputs."applicates-v0_3_1".owner = "nim-nix-pkgs";
  inputs."applicates-v0_3_1".ref   = "master";
  inputs."applicates-v0_3_1".repo  = "applicates";
  inputs."applicates-v0_3_1".type  = "github";
  inputs."applicates-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."applicates-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
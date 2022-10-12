{
  description = ''syntax sugar for assignments'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."assigns-master".dir   = "master";
  inputs."assigns-master".owner = "nim-nix-pkgs";
  inputs."assigns-master".ref   = "master";
  inputs."assigns-master".repo  = "assigns";
  inputs."assigns-master".type  = "github";
  inputs."assigns-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."defines-v0_4_4".dir   = "v0_4_4";
  inputs."defines-v0_4_4".owner = "nim-nix-pkgs";
  inputs."defines-v0_4_4".ref   = "master";
  inputs."defines-v0_4_4".repo  = "defines";
  inputs."defines-v0_4_4".type  = "github";
  inputs."defines-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."defines-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."defines-v0_5_1".dir   = "v0_5_1";
  inputs."defines-v0_5_1".owner = "nim-nix-pkgs";
  inputs."defines-v0_5_1".ref   = "master";
  inputs."defines-v0_5_1".repo  = "defines";
  inputs."defines-v0_5_1".type  = "github";
  inputs."defines-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."defines-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assigns-v0_6_0".dir   = "v0_6_0";
  inputs."assigns-v0_6_0".owner = "nim-nix-pkgs";
  inputs."assigns-v0_6_0".ref   = "master";
  inputs."assigns-v0_6_0".repo  = "assigns";
  inputs."assigns-v0_6_0".type  = "github";
  inputs."assigns-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assigns-v0_7_0".dir   = "v0_7_0";
  inputs."assigns-v0_7_0".owner = "nim-nix-pkgs";
  inputs."assigns-v0_7_0".ref   = "master";
  inputs."assigns-v0_7_0".repo  = "assigns";
  inputs."assigns-v0_7_0".type  = "github";
  inputs."assigns-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assigns-v0_7_1".dir   = "v0_7_1";
  inputs."assigns-v0_7_1".owner = "nim-nix-pkgs";
  inputs."assigns-v0_7_1".ref   = "master";
  inputs."assigns-v0_7_1".repo  = "assigns";
  inputs."assigns-v0_7_1".type  = "github";
  inputs."assigns-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assigns-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
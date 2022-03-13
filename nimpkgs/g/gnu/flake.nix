{
  description = ''Godot-Nim Utility - Godot gamedev with Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gnu-main".dir   = "main";
  inputs."gnu-main".owner = "nim-nix-pkgs";
  inputs."gnu-main".ref   = "master";
  inputs."gnu-main".repo  = "gnu";
  inputs."gnu-main".type  = "github";
  inputs."gnu-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnu-v0_0_1".dir   = "v0_0_1";
  inputs."gnu-v0_0_1".owner = "nim-nix-pkgs";
  inputs."gnu-v0_0_1".ref   = "master";
  inputs."gnu-v0_0_1".repo  = "gnu";
  inputs."gnu-v0_0_1".type  = "github";
  inputs."gnu-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnu-v0_1_1".dir   = "v0_1_1";
  inputs."gnu-v0_1_1".owner = "nim-nix-pkgs";
  inputs."gnu-v0_1_1".ref   = "master";
  inputs."gnu-v0_1_1".repo  = "gnu";
  inputs."gnu-v0_1_1".type  = "github";
  inputs."gnu-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gnu-v0_1_2".dir   = "v0_1_2";
  inputs."gnu-v0_1_2".owner = "nim-nix-pkgs";
  inputs."gnu-v0_1_2".ref   = "master";
  inputs."gnu-v0_1_2".repo  = "gnu";
  inputs."gnu-v0_1_2".type  = "github";
  inputs."gnu-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gnu-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
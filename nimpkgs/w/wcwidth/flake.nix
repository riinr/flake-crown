{
  description = ''Implementation of wcwidth with Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wcwidth-main".dir   = "main";
  inputs."wcwidth-main".owner = "nim-nix-pkgs";
  inputs."wcwidth-main".ref   = "master";
  inputs."wcwidth-main".repo  = "wcwidth";
  inputs."wcwidth-main".type  = "github";
  inputs."wcwidth-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wcwidth-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wcwidth-v0_1_1".dir   = "v0_1_1";
  inputs."wcwidth-v0_1_1".owner = "nim-nix-pkgs";
  inputs."wcwidth-v0_1_1".ref   = "master";
  inputs."wcwidth-v0_1_1".repo  = "wcwidth";
  inputs."wcwidth-v0_1_1".type  = "github";
  inputs."wcwidth-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wcwidth-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wcwidth-v0_1_2".dir   = "v0_1_2";
  inputs."wcwidth-v0_1_2".owner = "nim-nix-pkgs";
  inputs."wcwidth-v0_1_2".ref   = "master";
  inputs."wcwidth-v0_1_2".repo  = "wcwidth";
  inputs."wcwidth-v0_1_2".type  = "github";
  inputs."wcwidth-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wcwidth-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wcwidth-v0_1_3".dir   = "v0_1_3";
  inputs."wcwidth-v0_1_3".owner = "nim-nix-pkgs";
  inputs."wcwidth-v0_1_3".ref   = "master";
  inputs."wcwidth-v0_1_3".repo  = "wcwidth";
  inputs."wcwidth-v0_1_3".type  = "github";
  inputs."wcwidth-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wcwidth-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
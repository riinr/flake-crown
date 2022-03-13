{
  description = ''Pipe operator for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pipe-master".dir   = "master";
  inputs."pipe-master".owner = "nim-nix-pkgs";
  inputs."pipe-master".ref   = "master";
  inputs."pipe-master".repo  = "pipe";
  inputs."pipe-master".type  = "github";
  inputs."pipe-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipe-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pipe-v0_1_0".dir   = "v0_1_0";
  inputs."pipe-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pipe-v0_1_0".ref   = "master";
  inputs."pipe-v0_1_0".repo  = "pipe";
  inputs."pipe-v0_1_0".type  = "github";
  inputs."pipe-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipe-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pipe-v0_1_1".dir   = "v0_1_1";
  inputs."pipe-v0_1_1".owner = "nim-nix-pkgs";
  inputs."pipe-v0_1_1".ref   = "master";
  inputs."pipe-v0_1_1".repo  = "pipe";
  inputs."pipe-v0_1_1".type  = "github";
  inputs."pipe-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pipe-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A Nim library for biological sequence data.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bioseq-main".dir   = "main";
  inputs."bioseq-main".owner = "nim-nix-pkgs";
  inputs."bioseq-main".ref   = "master";
  inputs."bioseq-main".repo  = "bioseq";
  inputs."bioseq-main".type  = "github";
  inputs."bioseq-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bioseq-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bioseq-v0_1_0".dir   = "v0_1_0";
  inputs."bioseq-v0_1_0".owner = "nim-nix-pkgs";
  inputs."bioseq-v0_1_0".ref   = "master";
  inputs."bioseq-v0_1_0".repo  = "bioseq";
  inputs."bioseq-v0_1_0".type  = "github";
  inputs."bioseq-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bioseq-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
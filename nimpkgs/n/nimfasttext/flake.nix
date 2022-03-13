{
  description = ''fastText wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfasttext-master".dir   = "master";
  inputs."nimfasttext-master".owner = "nim-nix-pkgs";
  inputs."nimfasttext-master".ref   = "master";
  inputs."nimfasttext-master".repo  = "nimfasttext";
  inputs."nimfasttext-master".type  = "github";
  inputs."nimfasttext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfasttext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfasttext-v0_1_0".dir   = "v0_1_0";
  inputs."nimfasttext-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimfasttext-v0_1_0".ref   = "master";
  inputs."nimfasttext-v0_1_0".repo  = "nimfasttext";
  inputs."nimfasttext-v0_1_0".type  = "github";
  inputs."nimfasttext-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfasttext-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfasttext-v0_1_2".dir   = "v0_1_2";
  inputs."nimfasttext-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimfasttext-v0_1_2".ref   = "master";
  inputs."nimfasttext-v0_1_2".repo  = "nimfasttext";
  inputs."nimfasttext-v0_1_2".type  = "github";
  inputs."nimfasttext-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfasttext-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
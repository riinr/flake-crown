{
  description = ''Convert strings to any case'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."anycase_fork-master".dir   = "master";
  inputs."anycase_fork-master".owner = "nim-nix-pkgs";
  inputs."anycase_fork-master".ref   = "master";
  inputs."anycase_fork-master".repo  = "anycase_fork";
  inputs."anycase_fork-master".type  = "github";
  inputs."anycase_fork-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anycase_fork-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-gabbhack-anycase_fork-v0_1_0".dir   = "v0_1_0";
  inputs."github-gabbhack-anycase_fork-v0_1_0".owner = "nim-nix-pkgs";
  inputs."github-gabbhack-anycase_fork-v0_1_0".ref   = "master";
  inputs."github-gabbhack-anycase_fork-v0_1_0".repo  = "github-gabbhack-anycase_fork";
  inputs."github-gabbhack-anycase_fork-v0_1_0".type  = "github";
  inputs."github-gabbhack-anycase_fork-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-gabbhack-anycase_fork-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anycase_fork-v0_2_0".dir   = "v0_2_0";
  inputs."anycase_fork-v0_2_0".owner = "nim-nix-pkgs";
  inputs."anycase_fork-v0_2_0".ref   = "master";
  inputs."anycase_fork-v0_2_0".repo  = "anycase_fork";
  inputs."anycase_fork-v0_2_0".type  = "github";
  inputs."anycase_fork-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anycase_fork-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
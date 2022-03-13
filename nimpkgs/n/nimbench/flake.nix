{
  description = ''Micro benchmarking tool to measure speed of code, with the goal of optimizing it.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimbench-master".dir   = "master";
  inputs."nimbench-master".owner = "nim-nix-pkgs";
  inputs."nimbench-master".ref   = "master";
  inputs."nimbench-master".repo  = "nimbench";
  inputs."nimbench-master".type  = "github";
  inputs."nimbench-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbench-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbench-v0_1_1".dir   = "v0_1_1";
  inputs."nimbench-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimbench-v0_1_1".ref   = "master";
  inputs."nimbench-v0_1_1".repo  = "nimbench";
  inputs."nimbench-v0_1_1".type  = "github";
  inputs."nimbench-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbench-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbench-v0_2_0".dir   = "v0_2_0";
  inputs."nimbench-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimbench-v0_2_0".ref   = "master";
  inputs."nimbench-v0_2_0".repo  = "nimbench";
  inputs."nimbench-v0_2_0".type  = "github";
  inputs."nimbench-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbench-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbench-v0_2_1".dir   = "v0_2_1";
  inputs."nimbench-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimbench-v0_2_1".ref   = "master";
  inputs."nimbench-v0_2_1".repo  = "nimbench";
  inputs."nimbench-v0_2_1".type  = "github";
  inputs."nimbench-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbench-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
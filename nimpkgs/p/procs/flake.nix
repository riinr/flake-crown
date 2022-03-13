{
  description = ''Unix process&system query&formatting library&multi-command CLI in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."procs-master".dir   = "master";
  inputs."procs-master".owner = "nim-nix-pkgs";
  inputs."procs-master".ref   = "master";
  inputs."procs-master".repo  = "procs";
  inputs."procs-master".type  = "github";
  inputs."procs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."procs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."procs-v0_2_1".dir   = "v0_2_1";
  inputs."procs-v0_2_1".owner = "nim-nix-pkgs";
  inputs."procs-v0_2_1".ref   = "master";
  inputs."procs-v0_2_1".repo  = "procs";
  inputs."procs-v0_2_1".type  = "github";
  inputs."procs-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."procs-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."procs-v0_3_0".dir   = "v0_3_0";
  inputs."procs-v0_3_0".owner = "nim-nix-pkgs";
  inputs."procs-v0_3_0".ref   = "master";
  inputs."procs-v0_3_0".repo  = "procs";
  inputs."procs-v0_3_0".type  = "github";
  inputs."procs-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."procs-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
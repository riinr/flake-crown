{
  description = ''lightweight, energy-efficient, easily auditable threadpool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."taskpools-unstable".dir   = "unstable";
  inputs."taskpools-unstable".owner = "nim-nix-pkgs";
  inputs."taskpools-unstable".ref   = "master";
  inputs."taskpools-unstable".repo  = "taskpools";
  inputs."taskpools-unstable".type  = "github";
  inputs."taskpools-unstable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskpools-unstable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskpools-v0_0_2".dir   = "v0_0_2";
  inputs."taskpools-v0_0_2".owner = "nim-nix-pkgs";
  inputs."taskpools-v0_0_2".ref   = "master";
  inputs."taskpools-v0_0_2".repo  = "taskpools";
  inputs."taskpools-v0_0_2".type  = "github";
  inputs."taskpools-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskpools-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskpools-v0_0_3".dir   = "v0_0_3";
  inputs."taskpools-v0_0_3".owner = "nim-nix-pkgs";
  inputs."taskpools-v0_0_3".ref   = "master";
  inputs."taskpools-v0_0_3".repo  = "taskpools";
  inputs."taskpools-v0_0_3".type  = "github";
  inputs."taskpools-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskpools-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
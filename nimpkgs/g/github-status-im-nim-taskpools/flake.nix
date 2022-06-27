{
  description = ''lightweight, energy-efficient, easily auditable threadpool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-status-im-nim-taskpools-unstable".dir   = "unstable";
  inputs."github-status-im-nim-taskpools-unstable".owner = "nim-nix-pkgs";
  inputs."github-status-im-nim-taskpools-unstable".ref   = "master";
  inputs."github-status-im-nim-taskpools-unstable".repo  = "github-status-im-nim-taskpools";
  inputs."github-status-im-nim-taskpools-unstable".type  = "github";
  inputs."github-status-im-nim-taskpools-unstable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-status-im-nim-taskpools-unstable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-status-im-nim-taskpools-v0_0_2".dir   = "v0_0_2";
  inputs."github-status-im-nim-taskpools-v0_0_2".owner = "nim-nix-pkgs";
  inputs."github-status-im-nim-taskpools-v0_0_2".ref   = "master";
  inputs."github-status-im-nim-taskpools-v0_0_2".repo  = "github-status-im-nim-taskpools";
  inputs."github-status-im-nim-taskpools-v0_0_2".type  = "github";
  inputs."github-status-im-nim-taskpools-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-status-im-nim-taskpools-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-status-im-nim-taskpools-v0_0_3".dir   = "v0_0_3";
  inputs."github-status-im-nim-taskpools-v0_0_3".owner = "nim-nix-pkgs";
  inputs."github-status-im-nim-taskpools-v0_0_3".ref   = "master";
  inputs."github-status-im-nim-taskpools-v0_0_3".repo  = "github-status-im-nim-taskpools";
  inputs."github-status-im-nim-taskpools-v0_0_3".type  = "github";
  inputs."github-status-im-nim-taskpools-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-status-im-nim-taskpools-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
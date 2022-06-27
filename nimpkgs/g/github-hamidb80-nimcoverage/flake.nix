{
  description = ''Code coverage library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-hamidb80-nimcoverage-master".dir   = "master";
  inputs."github-hamidb80-nimcoverage-master".owner = "nim-nix-pkgs";
  inputs."github-hamidb80-nimcoverage-master".ref   = "master";
  inputs."github-hamidb80-nimcoverage-master".repo  = "github-hamidb80-nimcoverage";
  inputs."github-hamidb80-nimcoverage-master".type  = "github";
  inputs."github-hamidb80-nimcoverage-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-hamidb80-nimcoverage-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
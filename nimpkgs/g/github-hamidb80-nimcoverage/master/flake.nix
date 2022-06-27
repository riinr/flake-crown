{
  description = ''Code coverage library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github-hamidb80-nimcoverage-master.flake = false;
  inputs.src-github-hamidb80-nimcoverage-master.ref   = "refs/heads/master";
  inputs.src-github-hamidb80-nimcoverage-master.owner = "hamidb80";
  inputs.src-github-hamidb80-nimcoverage-master.repo  = "coverage";
  inputs.src-github-hamidb80-nimcoverage-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github-hamidb80-nimcoverage-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-github-hamidb80-nimcoverage-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
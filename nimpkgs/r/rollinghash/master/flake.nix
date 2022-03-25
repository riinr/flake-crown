{
  description = ''A high performance Nim implementation of a Cyclic Polynomial Hash, aka BuzHash, and Rabin-Karp algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-RollingHash-master.flake = false;
  inputs.src-RollingHash-master.ref   = "refs/heads/master";
  inputs.src-RollingHash-master.owner = "MarcAzar";
  inputs.src-RollingHash-master.repo  = "RollingHash";
  inputs.src-RollingHash-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-RollingHash-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-RollingHash-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
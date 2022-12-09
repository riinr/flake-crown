{
  inputs.nimrevs.url = "github:riinr/flake-crown/flake-pinning?dir=pkgsRev";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.nfl.url     = "github:riinr/nim-flakes-lib";
  inputs.nfl.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { self, nixpkgs, nfl, nimrevs, ...}@deps:
  let 
    lib  = nfl.lib;
    args = ["self" "nixpkgs" "nfl" "nimrevs"];
  in 
  lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = nimrevs.lib.meta.maze;
    refs = builtins.mapAttrs (ref: val:
      lib.mkRefOutput {
        inherit self nixpkgs ;
        deps = {};
        src  = builtins.fetchGit (nimrevs.lib.src ["maze"] ref).${ref} ;
        meta = nimrevs.lib.meta.maze.refs.${ref};
      }
    ) nimrevs.lib.meta.maze.refs;
  };
}

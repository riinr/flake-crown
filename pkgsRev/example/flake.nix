{
  inputs.nimrevs.url = "github:riinr/flake-crown?dir=pkgsRev";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.nfl.url     = "github:riinr/nim-flakes-lib";
  inputs.nfl.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { self, nixpkgs, nfl, nimrevs, ...}@deps:
  let 
    lib  = nfl.lib;
    args = ["self" "nixpkgs" "nfl" "nimrevs"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    deps = {};
    src  = builtins.fetchGit (builtins.head (nimrevs.lib.head ["maze"]));
    meta = nimrevs.lib.meta.maze;
  };
}

{
  inputs.nimrevs.url = "github:riinr/flake-crown/flake-pinning?dir=pkgsRev";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.nfl.url     = "github:riinr/nim-flakes-lib";
  inputs.nfl.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { self, nixpkgs, nfl, nimrevs, ...}@deps:
  let 
    lib   = nfl.lib;
    args  = ["self" "nixpkgs" "nfl" "nimrevs"];
    toPkg = name: ref: val: lib.mkRefOutput {
      inherit self nixpkgs;
      deps = {};
      src  = nimrevs.lib.fetchGit name ref;
      meta = val;
    };
    pkg   = name: builtins.mapAttrs (toPkg name) nimrevs.lib.meta.${name}.refs;
    pkgs  = name:   lib.mkProjectOutput {
      inherit self nixpkgs;
      meta = nimrevs.lib.meta.${name};
      refs = pkg name;
    };
  in pkgs "maze";
}

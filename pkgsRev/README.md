# Nim Pkgs Revs

List of Nim [Packages](https://github.com/nim-lang/packages/blob/master/packages.json) Revs and meta data to use with builtins.fetchGit 


## Usage

```nix
{
  inputs.nimrevs.url = "github:riinr/flake-crown/flake-pinning?dir=pkgsRev";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.nfl.url     = "github:riinr/nim-flakes-lib";
  inputs.nfl.inputs.nixpkgs.follows = "nixpkgs";
  outputs = { self, nixpkgs, nfl, nimrevs, ...}@deps:
  let 
    toPkg = name: ref: val: nfl.lib.mkRefOutput {
      inherit self nixpkgs;
      deps = {};
      meta = val;
      src  = nimrevs.lib.fetchGit name ref;
    };
    pkg   = name: builtins.mapAttrs (toPkg name) nimrevs.lib.meta.${name}.refs;
    pkgs  = name: nfl.lib.mkProjectOutput {
      inherit self nixpkgs;
      meta = nimrevs.lib.meta.${name};
      refs = pkg name;
    };
  in pkgs "maze";
}
```


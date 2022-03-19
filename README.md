# Packages nimble packages as Nix flakes

This repository contains experimental-grade, auto-generated
[Nim](https://nim-lang.org/) packages.

## TODO:
 - automatic testing
 - regular updates
 - index non packages.json
 - follow non git dependencies
 - some way to patch generated code

## Usage

```shell
# Build and execute a Nimble binary
nix run github:nim-nix-pkgs/maze

# using maze with gameoflife
nix run github:nim-nix-pkgs/gameoflife \
  <(nix run github:nim-nix-pkgs/maze -- -w:0 -r:1 -W:10 -H:10)

```

Or in Flake like

```nix
{
  description = "Replicating NimCR";
  inputs.nimcr.url = "github:nim-nix-pkgs/nimcr";

  outputs = { self, nimcr }: {
    defaultPackage.x86_64-linux = nimcr.defaultPackage.x86_64-linux;
  };
}
```

## Synchronization

```sh

cd refresher
nix develop -c $SHELL
./updatePkg.nims
```

This will prefetch the repositories of new and updated Nimble packages and
record the necessary metadata to fetch the source as a fixed-output derivation.
Each package has such a fixed-output that is used as a input to a derivations
that produce metadata to (attempt to) build the package.

## Version resolution

Version resolutions is done by the [lib project](https://github.com/riinr/nim-flakes-lib)

## Special thanks

- @ehmry, author of [project](https://github.com/nix-community/flake-nimble) we forked
- @nix-community, to keep his [project](https://github.com/nix-community/flake-nimble)
- @jiro4989 for his really fast reply

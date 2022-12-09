{
  inputs.nimrevs.url = "github:riinr/flake-crown/flake-pinning?dir=pkgsRev";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  inputs.nfl.url     = "github:riinr/nim-flakes-lib";
  inputs.nfl.inputs.nixpkgs.follows = "nixpkgs";

  outputs = { self, nixpkgs, nfl, nimrevs, ...}@deps:
  let 
    refOut = name: ref: val: nfl.lib.mkRefOutput {
      inherit self nixpkgs;
      deps = {};
      meta = val;
      src  = nimrevs.lib.fetchGit name ref;
    };
    refs   = name: builtins.mapAttrs (refOut name) nimrevs.lib.meta.${name}.refs;
    refsIn = name:
    let 
      refes     = refs name;
      refsNames = builtins.attrNames refes;
      lowerName = nixpkgs.lib.toLower name;
      refName   = builtins.replaceStrings 
        ["refs/" "heads/" "tags/v" "tags/" "."]
        [""      ""       ""       ""      "_"];
      refs'     = map (ref: {
        name  = "${lowerName}-${refName ref}";
        value = refes.${ref};
      }) refsNames;
    in builtins.listToAttrs refs';
    prjOut = name: nfl.lib.mkProjectOutput {
      inherit self nixpkgs;
      meta = nimrevs.lib.meta.${name};
      refs = refsIn name;
    };
    cligen = prjOut "cligen";
    bear   = prjOut "bearssl";
  in nfl.lib.mkRefOutput {
    inherit self nixpkgs;
    deps = { inherit cligen bear; };
    src  = ./.;
    meta.ref     = "master";
    meta.version = "0.1.0";
    meta.name    = "cligen-example";
    meta.desc    = "Example of cligen";
  };
}

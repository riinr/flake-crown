{ nixpkgs, system, ...}: drvArgs:
let
  lib = nixpkgs.lib;
  pkgs = nixpkgs.legacyPackages.${system};
  tree-sitter = pkgs.fetchFromGitHub {
    owner = "tree-sitter";
    repo = "tree-sitter";
    rev = "0.16.8";
    sha256 = "sha256-VP/ltF8OGzEXzGHBXTFW89pf1yqwf3MQV14UrOoVL5c=";
    fetchSubmodules = true;
  };
  tree-sitter-c = pkgs.fetchFromGitHub {
    owner = "tree-sitter";
    repo = "tree-sitter-c";
    rev = "0.16.1";
    sha256 = "sha256-aHZuQ6TDpPYp+7sZuM5utn8Td/xTAZFRrkmLBCf6MBA=";
    fetchSubmodules = true;
  };
  tree-sitter-cpp = pkgs.fetchFromGitHub {
    owner = "tree-sitter";
    repo = "tree-sitter-cpp";
    rev = "v0.16.0";
    sha256 = "sha256-rsLfXXUfzKkNgln89bP2G3t451tlKLWNRtD6lEhs3+I=";
    fetchSubmodules = true;
  };
  fakeGitPull = ''
    proc gitPull*(url: string, outdir = "", plist = "", checkout = "", quiet = false) =
      if getEnv("NIX_ENFORCE_PURITY", "1") == "1":
        echo "PURE NIX BUILD: configure your dependencies with prePatch"
      else:
        gitPullOld(url, outdir, plist, checkout, quiet)
      return
  '';
  prePatch = ''
    # some error of using c at compile time
    substituteInPlace nimterop/build.nim --replace \
      'import os'\
      'import os except findExe, sleep'
    
    # hide impurity
    substituteInPlace nimterop/build/shell.nim --replace \
      'proc gitPull*' \
      'proc gitPullOld'
    
    # put new version of gitPull after gitPullOld
    substituteInPlace nimterop/build/shell.nim --replace \
      'proc linkLibs*' '
    ${fakeGitPull}
    
    proc linkLibs*'

    substituteInPlace nimterop/build.nim --replace 'import os'\
      'import os except findExe, sleep'

    NIMTEROP_CACHE=$NIX_BUILD_TOP/nimcache/nimterop/nimterop

    TREESITTER_CACHE=$NIMTEROP_CACHE/treesitter
    mkdir -p $TREESITTER_CACHE
    cp -R ${tree-sitter}/* $TREESITTER_CACHE/
    chmod -R ugo+rw $TREESITTER_CACHE

    TREESITTER_C_CACHE=$NIMTEROP_CACHE/treesitter_c
    mkdir -p $TREESITTER_C_CACHE
    cp -R ${tree-sitter-c}/* $TREESITTER_C_CACHE/
    chmod -R ugo+rw $TREESITTER_C_CACHE

    TREESITTER_CPP_CACHE=$NIMTEROP_CACHE/treesitter_cpp
    mkdir -p $TREESITTER_CPP_CACHE
    cp -R ${tree-sitter-cpp}/* $TREESITTER_CPP_CACHE/
    chmod -R ugo+rw $TREESITTER_CPP_CACHE
  '';
in drvArgs // {
  inherit prePatch;
}

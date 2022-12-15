{
  pkgs    ? import <nixpkgs> {},
  nimPkgs ? [],
  ...
}:
let 
  first = builtins.head nimPkgs;
  resp  = import ./resolve.nix { inherit nimPkgs; };
  paths = builtins.map (v: v.src) (builtins.attrValues resp);
in pkgs.runCommand "first-src" {} 
  ''
    echo ${builtins.concatStringsSep ":" paths} > $out
  ''


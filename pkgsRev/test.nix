{
  pkgs    ? import <nixpkgs> {},
  nimPkgs ? [],
  verbose ? true,
  ...
}:
let 
  first = builtins.head nimPkgs;
  resp  = import ./resolve.nix { inherit pkgs nimPkgs verbose; };
  paths = builtins.map (v: v.src) (builtins.attrValues resp);
in pkgs.runCommand "first-src" {} 
  ''
    echo --path:${builtins.concatStringsSep " --path:" paths} > $out
  ''


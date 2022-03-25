{ nixpkgs, system, ...}: drvArgs:
let
  lib = nixpkgs.lib;
  pkgs = nixpkgs.legacyPackages.${system};
  propagatedBuildInputs = drvArgs.propagatedBuildInputs ++ [
    pkgs.libargon2
  ];
in drvArgs // {
  inherit propagatedBuildInputs;
}

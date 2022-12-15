{
  inputs.nimrevs.url = "github:riinr/flake-crown/flake-pinning?dir=pkgsRev";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs, nimrevs, ...}:
  let
    pkgsOf = system: nixpkgs.legacyPackages.${system};
    pkgs   = pkgsOf "x86_64-linux";
    deps   = nimrevs.lib.src { inherit pkgs; nimPkgs = ["cligen"];};
  in
  {
    packages.x86_64-linux.default = pkgs.nimPackages.buildNimPackage {
      buildInputs = deps;
      nimBinOnly  = true;
      pname       = "cligen-example";
      src         = ./.;
      version     = "0.1.0";
      meta.ref     = "master";
      meta.version = "0.1.0";
      meta.name    = "cligen-example";
      meta.desc    = "Example of cligen";
    };
  };
}

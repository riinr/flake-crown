{
  inputs.nimrevs.url     = "github:riinr/flake-crown?dir=pkgsRev";
  inputs.nixpkgs2205.url = "github:NixOS/nixpkgs/22.05";

  outputs = inputs:
  let mkPkg  = nixpkgsVersion:
    let
      pkgs   = nixpkgsVersion.legacyPackages.x86_64-linux;
      toFlag = builtins.map (src: "-p:${src}");
      deps   = inputs.nimrevs.lib.srcs {
        inherit pkgs;
        nimPkgs = [ "bearssl" ];
      };
    in
    pkgs.nimPackages.buildNimPackage {
      nimBinOnly  = true;
      nimFlags    = toFlag deps;
      pname       = "bearssl-example";
      src         = ./.;
      version     = "0.1.0";
      meta.ref     = "master";
      meta.version = "0.1.0";
      meta.name    = "bearssl-example";
      meta.desc    = "Example of bearssl";
    };
  in
  {
    packages.x86_64-linux.default = mkPkg inputs.nixpkgs2205;
  };
}

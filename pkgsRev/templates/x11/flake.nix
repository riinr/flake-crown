{
  #inputs.nimrevs.url     = "github:riinr/flake-crown?dir=pkgsRev";
  inputs.nimrevs.url     = "../../";
  inputs.nixpkgs2205.url = "github:NixOS/nixpkgs/22.05";

  outputs = inputs:
  let mkPkg  = nixpkgsVersion:
    let
      pkgs   = nixpkgsVersion.legacyPackages.x86_64-linux;
      toFlag = builtins.map (dep: "-p:${dep.src}/${dep.meta.srcDir}");
      deps   = inputs.nimrevs.lib.resolve {
        inherit pkgs;
        nimPkgs = [ "x11" ];
      };
    in
    pkgs.nimPackages.buildNimPackage {
      buildInputs = map (dep: dep.pkg) (builtins.attrValues deps);
      nimBinOnly  = true;
      nimFlags    = toFlag (builtins.attrValues deps);
      pname       = "x11-example";
      src         = ./.;
      version     = "0.1.0";
      meta.ref     = "master";
      meta.version = "0.1.0";
      meta.name    = "x11-example";
      meta.desc    = "Example of x11";
    };
  in
  {
    packages.x86_64-linux.default = mkPkg inputs.nixpkgs2205;
  };
}

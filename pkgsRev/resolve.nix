{
  pkgs    ? import            <nixpkgs> {},     # nixpkgs
  aspcud  ? pkgs.aspcud,                        # deps resolution program
  cudf    ? builtins.readFile ./packages.cudf,  # input for aspcud
  cudfMap ? import            ./packages.nix,   # map cudf names to meta files
  nimPkgs ? [],                                 # name of pkgs to look
  ...
}:
let 
  cudfRequest = ''
    ${cudf}
    request: 
    install: ${builtins.concatStringsSep ", " nimPkgs}

  '';
  cudfRespone = builtins.readFile (pkgs.runCommand "resolv-deps" {
    inherit cudfRequest; 
    passAsFile  = ["cudfRequest"];
    buildInputs = [ aspcud ];
  } ''aspcud $cudfRequestPath $out'');
  validResp   = resp: builtins.typeOf resp == "string" && resp != "";
  responses   =
    if   builtins.match "FAIL.*" cudfRespone == []
    then throw ''Unable to resolve dependecies: ${builtins.concatStringsSep ", " nimPkgs}''
    else builtins.filter validResp (builtins.split "\n\n+" cudfRespone);
  respToMeta  = resp:
    let 
      pkg      = builtins.fromTOML (builtins.replaceStrings [": " "\n"] ['' = "'' "\"\n"] resp + ''"'');
      fromJSON = f: builtins.fromJSON (builtins.readFile f);
      meta     = fromJSON (./. + cudfMap.${pkg.package});
      ref      = meta.cudf.version.${pkg.version};
    in meta.refs.${ref} // {
      url      = meta.url;
      cudfName = pkg.package;
    };
    metaToResult = meta: {
      name  = meta.name;
      value = {
        inherit meta;
        src = builtins.fetchGit {
          name = "${meta.name}-src";
          ref  = meta.ref;
          rev  = meta.rev;
          url  = meta.url;
        };
      };
    };
in builtins.listToAttrs (map metaToResult (map respToMeta responses))

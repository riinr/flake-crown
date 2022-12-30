{
  pkgs    ? import <nixpkgs> {},   # nixpkgs
  aspcud  ? pkgs.aspcud,           # deps resolution program
  cudf    ? ./packages.cudf,       # input for aspcud
  cudfMap ? import ./packages.nix, # map cudf names to meta files
  nimPkgs ? [],                    # name of pkgs to look
  verbose ? false,                 # for debuging
  ...
}:
let 
  cudfRequest = 
  ''
    request: 
    install: ${builtins.concatStringsSep ", " nimPkgs}

  '';
  cudfRespone = builtins.readFile (pkgs.runCommand "resolv-deps" {
      inherit cudfRequest; 
      passAsFile  = ["cudfRequest"];
      buildInputs = [ aspcud ];
    }
    ''
      cat ${cudf} $cudfRequestPath > request.cudf
      aspcud -V 5 request.cudf result.cudf 2> debug.txt
      touch fail.cudf
      ${if verbose then "grep -q FAIL result.cudf && cat debug.txt > fail.cudf" else ""}
      cat result.cudf fail.cudf > $out
    '');
  validResp   = resp: builtins.typeOf resp == "string" && resp != "";
  errMsg      = ''${cudfRespone}Unable to resolve dependecies: ${builtins.concatStringsSep ", " nimPkgs}'' +
    (if verbose then "\n${cudfRequest}packages: ${cudf}" else "");
  responses   =
    if   builtins.match "FAIL.*" cudfRespone == []
    then throw errMsg
    else builtins.filter validResp (builtins.split "\n\n+" cudfRespone);
  respToMeta  = resp:
    let 
      pkg      = builtins.fromTOML (builtins.replaceStrings [": " "\n"] ['' = "'' "\"\n"] resp + ''"'');
      fromMeta = f:
      let
        f'   = builtins.replaceStrings [".json"] [".toml"] f;
        json = builtins.fromJSON (builtins.readFile (./. + f ));
        toml = builtins.fromTOML (builtins.readFile (./. + f'));
      in json // { extra = toml; };
      meta     = fromMeta cudfMap.${pkg.package};
      ref      = meta.cudf.version.${pkg.version};
    in meta.refs.${ref} // {
      url      = meta.url;
      cudfName = pkg.package;
      extra    = meta.extra;
    };
    metaToResult = meta: 
    let 
      src = builtins.fetchGit {
        name = "${meta.name}-src";
        ref  = meta.ref;
        rev  = meta.rev;
        url  = meta.url;
        submodules = meta.extra ? submodules;
      };
      isNotNull  = v: v != null;
      getAttr    = v: pkgs.lib.attrByPath (pkgs.lib.splitString "." v) null pkgs;
      getNixPkgs = l: builtins.filter isNotNull (map getAttr l);
    in {
      name  = meta.name;
      value.meta = meta;
      value.src  = src; 
      value.pkg  = pkgs.nimPackages.buildNimPackage {
        pname   = meta.name;
        src     = src;
        version = meta.version;
        propagatedBuildInputs = getNixPkgs (meta.extra.runtime-dependencies or []);
      };
    };
in builtins.listToAttrs (map metaToResult (map respToMeta responses))

{
  description = "Nim Pkgs REV for fetchGit";
  outputs = inputs: 
    let
      fromJSON = f: builtins.fromJSON (builtins.readFile f);
      packages = fromJSON ./packages.json;
      nimMetas = builtins.listToAttrs (map pkgMeta packages);
      pkgMeta  = nimPkg: 
        let 
          pkgUrl  = builtins.replaceStrings [".com:" "git@" "https://" "http://"] [".com/" "" "" ""] (nimPkg.url or "");
          name    = nimPkg.name or nimPkg.alias or "";
          spltUrl = builtins.split "/" pkgUrl;
          pkgDom  = builtins.head spltUrl;
          pkgOwn  = builtins.head (builtins.split "/" (builtins.replaceStrings [ "${pkgDom}/"] [""] pkgUrl));
          pkgPath = "${pkgDom}/${pkgOwn}/${name}";
        in 
          { inherit name;
            value = 
              if pkgUrl == ""
              then nimPkg
              else if builtins.pathExists ./${pkgPath}/meta.json
                then fromJSON ./${pkgUrl}/meta.json
                else nimPkg;
           };
      srcOf = name: {
        inherit name;
        value = builtins.fetchGit {
          url  = nimMetas.${name}.url;
          name = "${name}-head-src";
          rev  = nimMetas.${name}.refs.HEAD.rev;
          ref  = nimMetas.${name}.refs.HEAD.ref;
        };
      };
    in builtins.trace (builtins.attrNames nimMetas.sdl2.refs) {
      lib.nimMetas = nimMetas;
      lib.srcs     = pkgMames: builtins.listToAttrs (map srcOf pkgMames);
    };
}

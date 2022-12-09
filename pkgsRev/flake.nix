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
      refToName = builtins.replaceStrings ["refs/" "/" " " "."] ["" "_" "_" "_"];
      srcOf = name: ref:
      {
          name = "${name}-${refToName ref}-src";
          ref  = nimMetas.${name}.refs.${ref}.ref;
          rev  = nimMetas.${name}.refs.${ref}.rev;
          url  = nimMetas.${name}.url;
      };
      heads = name: { inherit name; value = srcOf name "HEAD"; };
      srcs  = name: { inherit name; value = srcOf name; };
    in {
      lib.head = pkgMames: builtins.listToAttrs (map heads pkgMames);
      lib.meta = nimMetas;
      lib.srcs = pkgNames: builtins.listToAttrs (map srcs  pkgNames);
      lib.src  = srcOf;
      lib.fetchGit = name: ref: builtins.fetchGit (srcOf name ref);
    };
}

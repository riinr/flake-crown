{
  description = "Nim Pkgs REV for fetchGit";
  outputs = inputs: 
    let
      fromJSON = f: builtins.fromJSON (builtins.readFile f);
      packages = import ./packages.nix;
    in {
    };
}

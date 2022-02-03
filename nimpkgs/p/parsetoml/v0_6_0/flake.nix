{
  description = ''Library for parsing TOML files.'';
  inputs.src-parsetoml-v0_6_0.flake = false;
  inputs.src-parsetoml-v0_6_0.type = "github";
  inputs.src-parsetoml-v0_6_0.owner = "NimParsers";
  inputs.src-parsetoml-v0_6_0.repo = "parsetoml";
  inputs.src-parsetoml-v0_6_0.ref = "refs/tags/v0.6.0";
  
  outputs = { self, nixpkgs, src-parsetoml-v0_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parsetoml-v0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-parsetoml-v0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Support for serialization of objects'';
  inputs.src-serializetools-v1_13_0.flake = false;
  inputs.src-serializetools-v1_13_0.type = "github";
  inputs.src-serializetools-v1_13_0.owner = "JeffersonLab";
  inputs.src-serializetools-v1_13_0.repo = "serializetools";
  inputs.src-serializetools-v1_13_0.ref = "refs/tags/v1.13.0";
  
  outputs = { self, nixpkgs, src-serializetools-v1_13_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serializetools-v1_13_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serializetools-v1_13_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
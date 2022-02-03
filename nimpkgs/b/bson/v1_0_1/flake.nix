{
  description = ''BSON Binary JSON Serialization'';
  inputs.src-bson-v1_0_1.flake = false;
  inputs.src-bson-v1_0_1.type = "github";
  inputs.src-bson-v1_0_1.owner = "JohnAD";
  inputs.src-bson-v1_0_1.repo = "bson";
  inputs.src-bson-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, src-bson-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bson-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bson-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
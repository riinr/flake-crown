{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v1_5_9.flake = false;
  inputs.src-cligen-v1_5_9.type = "github";
  inputs.src-cligen-v1_5_9.owner = "c-blake";
  inputs.src-cligen-v1_5_9.repo = "cligen";
  inputs.src-cligen-v1_5_9.ref = "refs/tags/v1.5.9";
  
  outputs = { self, nixpkgs, src-cligen-v1_5_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v1_5_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v1_5_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
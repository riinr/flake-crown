{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_43.flake = false;
  inputs.src-cligen-v0_9_43.type = "github";
  inputs.src-cligen-v0_9_43.owner = "c-blake";
  inputs.src-cligen-v0_9_43.repo = "cligen";
  inputs.src-cligen-v0_9_43.ref = "refs/tags/v0.9.43";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_43, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_43;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_43"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
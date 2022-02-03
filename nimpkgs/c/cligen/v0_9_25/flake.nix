{
  description = ''Infer & generate command-line interace/option/argument parsers'';
  inputs.src-cligen-v0_9_25.flake = false;
  inputs.src-cligen-v0_9_25.type = "github";
  inputs.src-cligen-v0_9_25.owner = "c-blake";
  inputs.src-cligen-v0_9_25.repo = "cligen";
  inputs.src-cligen-v0_9_25.ref = "refs/tags/v0.9.25";
  
  outputs = { self, nixpkgs, src-cligen-v0_9_25, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_25;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cligen-v0_9_25"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
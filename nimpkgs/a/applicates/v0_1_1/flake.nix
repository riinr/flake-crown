{
  description = ''"pointers" to cached AST that instantiate routines when called'';
  inputs.src-applicates-v0_1_1.flake = false;
  inputs.src-applicates-v0_1_1.type = "github";
  inputs.src-applicates-v0_1_1.owner = "metagn";
  inputs.src-applicates-v0_1_1.repo = "applicates";
  inputs.src-applicates-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-applicates-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-applicates-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-applicates-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
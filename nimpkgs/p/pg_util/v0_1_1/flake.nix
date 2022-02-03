{
  description = ''Postgres utility functions'';
  inputs.src-pg_util-v0_1_1.flake = false;
  inputs.src-pg_util-v0_1_1.type = "github";
  inputs.src-pg_util-v0_1_1.owner = "hiteshjasani";
  inputs.src-pg_util-v0_1_1.repo = "nim-pg-util";
  inputs.src-pg_util-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-pg_util-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pg_util-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pg_util-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
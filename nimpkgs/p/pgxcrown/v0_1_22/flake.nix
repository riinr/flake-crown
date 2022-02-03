{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_22.flake = false;
  inputs.src-pgxcrown-v0_1_22.type = "github";
  inputs.src-pgxcrown-v0_1_22.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_22.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_22.ref = "refs/tags/v0.1.22";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_22, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_22;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_22"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
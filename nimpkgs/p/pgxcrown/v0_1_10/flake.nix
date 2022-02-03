{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_10.flake = false;
  inputs.src-pgxcrown-v0_1_10.type = "github";
  inputs.src-pgxcrown-v0_1_10.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_10.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_10.ref = "refs/tags/v0.1.10";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
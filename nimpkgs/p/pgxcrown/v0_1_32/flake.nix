{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_32.flake = false;
  inputs.src-pgxcrown-v0_1_32.type = "github";
  inputs.src-pgxcrown-v0_1_32.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_32.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_32.ref = "refs/tags/v0.1.32";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_32, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_32;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_32"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
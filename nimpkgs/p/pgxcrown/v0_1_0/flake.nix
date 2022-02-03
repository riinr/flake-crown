{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_1_0.flake = false;
  inputs.src-pgxcrown-v0_1_0.type = "github";
  inputs.src-pgxcrown-v0_1_0.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_1_0.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_4_4.flake = false;
  inputs.src-pgxcrown-v0_4_4.type = "github";
  inputs.src-pgxcrown-v0_4_4.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_4_4.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_4_4.ref = "refs/tags/v0.4.4";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_4_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_4_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_4_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
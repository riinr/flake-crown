{
  description = ''Build Postgres extensions in Nim.'';
  inputs.src-pgxcrown-v0_2_6.flake = false;
  inputs.src-pgxcrown-v0_2_6.type = "github";
  inputs.src-pgxcrown-v0_2_6.owner = "luisacosta828";
  inputs.src-pgxcrown-v0_2_6.repo = "pgxcrown";
  inputs.src-pgxcrown-v0_2_6.ref = "refs/tags/v0.2.6";
  
  outputs = { self, nixpkgs, src-pgxcrown-v0_2_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pgxcrown-v0_2_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pgxcrown-v0_2_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
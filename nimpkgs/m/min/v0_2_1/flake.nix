{
  description = ''A small but practical concatenative programming language and shell.'';
  inputs.src-min-v0_2_1.flake = false;
  inputs.src-min-v0_2_1.type = "github";
  inputs.src-min-v0_2_1.owner = "h3rald";
  inputs.src-min-v0_2_1.repo = "min";
  inputs.src-min-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-min-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-min-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-min-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
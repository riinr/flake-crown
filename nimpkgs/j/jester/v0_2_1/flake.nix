{
  description = ''A sinatra-like web framework for Nim.'';
  inputs.src-jester-v0_2_1.flake = false;
  inputs.src-jester-v0_2_1.type = "github";
  inputs.src-jester-v0_2_1.owner = "dom96";
  inputs.src-jester-v0_2_1.repo = "jester";
  inputs.src-jester-v0_2_1.ref = "refs/tags/v0.2.1";
  
  outputs = { self, nixpkgs, src-jester-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jester-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jester-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
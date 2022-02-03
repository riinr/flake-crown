{
  description = ''A sinatra-like web framework for Nim.'';
  inputs.src-jester-v0_2_0.flake = false;
  inputs.src-jester-v0_2_0.type = "github";
  inputs.src-jester-v0_2_0.owner = "dom96";
  inputs.src-jester-v0_2_0.repo = "jester";
  inputs.src-jester-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-jester-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jester-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jester-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
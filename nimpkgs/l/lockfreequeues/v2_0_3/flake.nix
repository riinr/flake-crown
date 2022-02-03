{
  description = ''Lock-free queue implementations for Nim.'';
  inputs.src-lockfreequeues-v2_0_3.flake = false;
  inputs.src-lockfreequeues-v2_0_3.type = "github";
  inputs.src-lockfreequeues-v2_0_3.owner = "elijahr";
  inputs.src-lockfreequeues-v2_0_3.repo = "lockfreequeues";
  inputs.src-lockfreequeues-v2_0_3.ref = "refs/tags/v2.0.3";
  
  outputs = { self, nixpkgs, src-lockfreequeues-v2_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lockfreequeues-v2_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lockfreequeues-v2_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
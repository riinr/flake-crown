{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_2_3.flake = false;
  inputs.src-rosencrantz-0_2_3.type = "github";
  inputs.src-rosencrantz-0_2_3.owner = "andreaferretti";
  inputs.src-rosencrantz-0_2_3.repo = "rosencrantz";
  inputs.src-rosencrantz-0_2_3.ref = "refs/tags/0.2.3";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
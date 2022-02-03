{
  description = ''A web DSL for Nim'';
  inputs.src-rosencrantz-0_3_5.flake = false;
  inputs.src-rosencrantz-0_3_5.type = "github";
  inputs.src-rosencrantz-0_3_5.owner = "andreaferretti";
  inputs.src-rosencrantz-0_3_5.repo = "rosencrantz";
  inputs.src-rosencrantz-0_3_5.ref = "refs/tags/0.3.5";
  
  outputs = { self, nixpkgs, src-rosencrantz-0_3_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rosencrantz-0_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rosencrantz-0_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
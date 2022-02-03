{
  description = ''Statistic-driven microbenchmark framework'';
  inputs.src-criterion-0_2_5.flake = false;
  inputs.src-criterion-0_2_5.type = "github";
  inputs.src-criterion-0_2_5.owner = "disruptek";
  inputs.src-criterion-0_2_5.repo = "criterion";
  inputs.src-criterion-0_2_5.ref = "refs/tags/0.2.5";
  
  
  inputs."https://github.com/disruptek/testes".url = "path:../../../h/https://github.com/disruptek/testes";
  inputs."https://github.com/disruptek/testes".type = "github";
  inputs."https://github.com/disruptek/testes".owner = "riinr";
  inputs."https://github.com/disruptek/testes".repo = "flake-nimble";
  inputs."https://github.com/disruptek/testes".ref = "flake-pinning";
  inputs."https://github.com/disruptek/testes".dir = "nimpkgs/h/https://github.com/disruptek/testes";

  outputs = { self, nixpkgs, src-criterion-0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-criterion-0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-criterion-0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
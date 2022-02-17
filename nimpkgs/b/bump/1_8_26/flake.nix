{
  description = ''a tiny tool to bump nimble versions'';
  inputs.src-bump-1_8_26.flake = false;
  inputs.src-bump-1_8_26.type = "github";
  inputs.src-bump-1_8_26.owner = "disruptek";
  inputs.src-bump-1_8_26.repo = "bump";
  inputs.src-bump-1_8_26.ref = "refs/tags/1.8.26";
  
  
  inputs."https://github.com/disruptek/cutelog".type = "github";
  inputs."https://github.com/disruptek/cutelog".owner = "riinr";
  inputs."https://github.com/disruptek/cutelog".repo = "flake-nimble";
  inputs."https://github.com/disruptek/cutelog".ref = "flake-pinning";
  inputs."https://github.com/disruptek/cutelog".dir = "nimpkgs/h/https://github.com/disruptek/cutelog";

  
  inputs."https://github.com/disruptek/testes".type = "github";
  inputs."https://github.com/disruptek/testes".owner = "riinr";
  inputs."https://github.com/disruptek/testes".repo = "flake-nimble";
  inputs."https://github.com/disruptek/testes".ref = "flake-pinning";
  inputs."https://github.com/disruptek/testes".dir = "nimpkgs/h/https://github.com/disruptek/testes";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-bump-1_8_26, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_8_26;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bump-1_8_26"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
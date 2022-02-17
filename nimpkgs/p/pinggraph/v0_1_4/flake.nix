{
  description = ''Simple terminal ping graph'';
  inputs.src-pinggraph-v0_1_4.flake = false;
  inputs.src-pinggraph-v0_1_4.type = "github";
  inputs.src-pinggraph-v0_1_4.owner = "SolitudeSF";
  inputs.src-pinggraph-v0_1_4.repo = "pinggraph";
  inputs.src-pinggraph-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-pinggraph-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pinggraph-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pinggraph-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
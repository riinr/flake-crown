{
  description = ''Tools for working with re-frame ClojureScript projects'';
  inputs.src-reframe-0_2_0.flake = false;
  inputs.src-reframe-0_2_0.type = "github";
  inputs.src-reframe-0_2_0.owner = "rosado";
  inputs.src-reframe-0_2_0.repo = "reframe.nim";
  inputs.src-reframe-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."edn".type = "github";
  inputs."edn".owner = "riinr";
  inputs."edn".repo = "flake-nimble";
  inputs."edn".ref = "flake-pinning";
  inputs."edn".dir = "nimpkgs/e/edn";

  outputs = { self, nixpkgs, src-reframe-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-reframe-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-reframe-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
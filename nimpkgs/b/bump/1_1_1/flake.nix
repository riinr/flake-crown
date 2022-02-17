{
  description = ''a tiny tool to bump nimble versions'';
  inputs.src-bump-1_1_1.flake = false;
  inputs.src-bump-1_1_1.type = "github";
  inputs.src-bump-1_1_1.owner = "disruptek";
  inputs.src-bump-1_1_1.repo = "bump";
  inputs.src-bump-1_1_1.ref = "refs/tags/1.1.1";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-bump-1_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bump-1_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
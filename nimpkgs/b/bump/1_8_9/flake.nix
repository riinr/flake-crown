{
  description = ''a tiny tool to bump nimble versions'';
  inputs.src-bump-1_8_9.flake = false;
  inputs.src-bump-1_8_9.type = "github";
  inputs.src-bump-1_8_9.owner = "disruptek";
  inputs.src-bump-1_8_9.repo = "bump";
  inputs.src-bump-1_8_9.ref = "refs/tags/1.8.9";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-bump-1_8_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-bump-1_8_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-bump-1_8_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''meowhash wrapper for Nim'';
  inputs.src-meow-0_2_0.flake = false;
  inputs.src-meow-0_2_0.type = "github";
  inputs.src-meow-0_2_0.owner = "disruptek";
  inputs.src-meow-0_2_0.repo = "meow";
  inputs.src-meow-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-meow-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-meow-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-meow-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
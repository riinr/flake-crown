{
  description = ''Collection of Diff stringifications (and reversals)'';
  inputs.src-diffoutput-v0_1_1.flake = false;
  inputs.src-diffoutput-v0_1_1.type = "github";
  inputs.src-diffoutput-v0_1_1.owner = "JohnAD";
  inputs.src-diffoutput-v0_1_1.repo = "diffoutput";
  inputs.src-diffoutput-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."diff".url = "path:../../../d/diff";
  inputs."diff".type = "github";
  inputs."diff".owner = "riinr";
  inputs."diff".repo = "flake-nimble";
  inputs."diff".ref = "flake-pinning";
  inputs."diff".dir = "nimpkgs/d/diff";

  outputs = { self, nixpkgs, src-diffoutput-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-diffoutput-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-diffoutput-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
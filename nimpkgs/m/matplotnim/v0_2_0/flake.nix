{
  description = ''A Nim wrapper for Python's matplotlib'';
  inputs.src-matplotnim-v0_2_0.flake = false;
  inputs.src-matplotnim-v0_2_0.type = "github";
  inputs.src-matplotnim-v0_2_0.owner = "ruivieira";
  inputs.src-matplotnim-v0_2_0.repo = "matplotnim";
  inputs.src-matplotnim-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."tempfile".url = "path:../../../t/tempfile";
  inputs."tempfile".type = "github";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".repo = "flake-nimble";
  inputs."tempfile".ref = "flake-pinning";
  inputs."tempfile".dir = "nimpkgs/t/tempfile";

  
  inputs."nimpy".url = "path:../../../n/nimpy";
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";

  outputs = { self, nixpkgs, src-matplotnim-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-matplotnim-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-matplotnim-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
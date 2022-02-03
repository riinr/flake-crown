{
  description = ''Small wrapper for SystemVerilog DPI-C header svdpi.h'';
  inputs.src-svdpi-v0_5_2.flake = false;
  inputs.src-svdpi-v0_5_2.type = "github";
  inputs.src-svdpi-v0_5_2.owner = "kaushalmodi";
  inputs.src-svdpi-v0_5_2.repo = "nim-svdpi";
  inputs.src-svdpi-v0_5_2.ref = "refs/tags/v0.5.2";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-svdpi-v0_5_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-svdpi-v0_5_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-svdpi-v0_5_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
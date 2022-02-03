{
  description = ''Wrapper for SystemVerilog VPI headers vpi_user.h and sv_vpi_user.h'';
  inputs.src-svvpi-v0_0_6.flake = false;
  inputs.src-svvpi-v0_0_6.type = "github";
  inputs.src-svvpi-v0_0_6.owner = "kaushalmodi";
  inputs.src-svvpi-v0_0_6.repo = "nim-svvpi";
  inputs.src-svvpi-v0_0_6.ref = "refs/tags/v0.0.6";
  
  
  inputs."nimterop".url = "path:../../../n/nimterop";
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-svvpi-v0_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-svvpi-v0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-svvpi-v0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
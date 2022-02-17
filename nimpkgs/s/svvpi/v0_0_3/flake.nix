{
  description = ''Wrapper for SystemVerilog VPI headers vpi_user.h and sv_vpi_user.h'';
  inputs.src-svvpi-v0_0_3.flake = false;
  inputs.src-svvpi-v0_0_3.type = "github";
  inputs.src-svvpi-v0_0_3.owner = "kaushalmodi";
  inputs.src-svvpi-v0_0_3.repo = "nim-svvpi";
  inputs.src-svvpi-v0_0_3.ref = "refs/tags/v0.0.3";
  
  
  inputs."nimterop".type = "github";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".repo = "flake-nimble";
  inputs."nimterop".ref = "flake-pinning";
  inputs."nimterop".dir = "nimpkgs/n/nimterop";

  outputs = { self, nixpkgs, src-svvpi-v0_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-svvpi-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-svvpi-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
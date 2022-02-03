{
  description = ''A terminal file manager written in nim'';
  inputs.src-nimmm-v0_0_1.flake = false;
  inputs.src-nimmm-v0_0_1.type = "github";
  inputs.src-nimmm-v0_0_1.owner = "joachimschmidt557";
  inputs.src-nimmm-v0_0_1.repo = "nimmm";
  inputs.src-nimmm-v0_0_1.ref = "refs/tags/v0.0.1";
  
  
  inputs."noise".url = "path:../../../n/noise";
  inputs."noise".type = "github";
  inputs."noise".owner = "riinr";
  inputs."noise".repo = "flake-nimble";
  inputs."noise".ref = "flake-pinning";
  inputs."noise".dir = "nimpkgs/n/noise";

  
  inputs."nimbox".url = "path:../../../n/nimbox";
  inputs."nimbox".type = "github";
  inputs."nimbox".owner = "riinr";
  inputs."nimbox".repo = "flake-nimble";
  inputs."nimbox".ref = "flake-pinning";
  inputs."nimbox".dir = "nimpkgs/n/nimbox";

  outputs = { self, nixpkgs, src-nimmm-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimmm-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimmm-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
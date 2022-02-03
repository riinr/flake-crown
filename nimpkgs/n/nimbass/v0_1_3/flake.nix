{
  description = ''Bass wrapper for Nim'';
  inputs.src-nimbass-v0_1_3.flake = false;
  inputs.src-nimbass-v0_1_3.type = "github";
  inputs.src-nimbass-v0_1_3.owner = "genotrance";
  inputs.src-nimbass-v0_1_3.repo = "nimbass";
  inputs.src-nimbass-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimbass-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbass-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbass-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
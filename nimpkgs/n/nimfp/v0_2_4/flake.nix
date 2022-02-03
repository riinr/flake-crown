{
  description = ''Nim functional programming library'';
  inputs.src-nimfp-v0_2_4.flake = false;
  inputs.src-nimfp-v0_2_4.type = "github";
  inputs.src-nimfp-v0_2_4.owner = "vegansk";
  inputs.src-nimfp-v0_2_4.repo = "nimfp";
  inputs.src-nimfp-v0_2_4.ref = "refs/tags/v0.2.4";
  
  
  inputs."nimboost".url = "path:../../../n/nimboost";
  inputs."nimboost".type = "github";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".repo = "flake-nimble";
  inputs."nimboost".ref = "flake-pinning";
  inputs."nimboost".dir = "nimpkgs/n/nimboost";

  outputs = { self, nixpkgs, src-nimfp-v0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfp-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
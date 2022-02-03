{
  description = ''User-friendly wrapper for nim ast'';
  inputs.src-hnimast-v0_3_28.flake = false;
  inputs.src-hnimast-v0_3_28.type = "github";
  inputs.src-hnimast-v0_3_28.owner = "haxscramper";
  inputs.src-hnimast-v0_3_28.repo = "hnimast";
  inputs.src-hnimast-v0_3_28.ref = "refs/tags/v0.3.28";
  
  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."macroutils".url = "path:../../../m/macroutils";
  inputs."macroutils".type = "github";
  inputs."macroutils".owner = "riinr";
  inputs."macroutils".repo = "flake-nimble";
  inputs."macroutils".ref = "flake-pinning";
  inputs."macroutils".dir = "nimpkgs/m/macroutils";

  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  
  inputs."nimble".url = "path:../../../n/nimble";
  inputs."nimble".type = "github";
  inputs."nimble".owner = "riinr";
  inputs."nimble".repo = "flake-nimble";
  inputs."nimble".ref = "flake-pinning";
  inputs."nimble".dir = "nimpkgs/n/nimble";

  outputs = { self, nixpkgs, src-hnimast-v0_3_28, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hnimast-v0_3_28;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hnimast-v0_3_28"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
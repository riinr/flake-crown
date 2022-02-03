{
  description = ''User-friendly wrapper for nim ast'';
  inputs.src-hnimast-v0_3_2.flake = false;
  inputs.src-hnimast-v0_3_2.type = "github";
  inputs.src-hnimast-v0_3_2.owner = "haxscramper";
  inputs.src-hnimast-v0_3_2.repo = "hnimast";
  inputs.src-hnimast-v0_3_2.ref = "refs/tags/v0.3.2";
  
  
  inputs."hmisc".url = "path:../../../h/hmisc";
  inputs."hmisc".type = "github";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".repo = "flake-nimble";
  inputs."hmisc".ref = "flake-pinning";
  inputs."hmisc".dir = "nimpkgs/h/hmisc";

  
  inputs."compiler".url = "path:../../../c/compiler";
  inputs."compiler".type = "github";
  inputs."compiler".owner = "riinr";
  inputs."compiler".repo = "flake-nimble";
  inputs."compiler".ref = "flake-pinning";
  inputs."compiler".dir = "nimpkgs/c/compiler";

  outputs = { self, nixpkgs, src-hnimast-v0_3_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hnimast-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hnimast-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
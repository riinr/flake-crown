{
  description = ''Prebuilt components for the Fidget GUI library.'';
  inputs.src-spinner-v0_1_3.flake = false;
  inputs.src-spinner-v0_1_3.type = "github";
  inputs.src-spinner-v0_1_3.owner = "tonogram";
  inputs.src-spinner-v0_1_3.repo = "spinner";
  inputs.src-spinner-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."fidget".url = "path:../../../f/fidget";
  inputs."fidget".type = "github";
  inputs."fidget".owner = "riinr";
  inputs."fidget".repo = "flake-nimble";
  inputs."fidget".ref = "flake-pinning";
  inputs."fidget".dir = "nimpkgs/f/fidget";

  
  inputs."gradient".url = "path:../../../g/gradient";
  inputs."gradient".type = "github";
  inputs."gradient".owner = "riinr";
  inputs."gradient".repo = "flake-nimble";
  inputs."gradient".ref = "flake-pinning";
  inputs."gradient".dir = "nimpkgs/g/gradient";

  outputs = { self, nixpkgs, src-spinner-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spinner-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spinner-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
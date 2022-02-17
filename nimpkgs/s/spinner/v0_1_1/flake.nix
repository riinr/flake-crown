{
  description = ''Prebuilt components for the Fidget GUI library.'';
  inputs.src-spinner-v0_1_1.flake = false;
  inputs.src-spinner-v0_1_1.type = "github";
  inputs.src-spinner-v0_1_1.owner = "tonogram";
  inputs.src-spinner-v0_1_1.repo = "spinner";
  inputs.src-spinner-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."fidget".type = "github";
  inputs."fidget".owner = "riinr";
  inputs."fidget".repo = "flake-nimble";
  inputs."fidget".ref = "flake-pinning";
  inputs."fidget".dir = "nimpkgs/f/fidget";

  
  inputs."gradient".type = "github";
  inputs."gradient".owner = "riinr";
  inputs."gradient".repo = "flake-nimble";
  inputs."gradient".ref = "flake-pinning";
  inputs."gradient".dir = "nimpkgs/g/gradient";

  outputs = { self, nixpkgs, src-spinner-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spinner-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-spinner-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
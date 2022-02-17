{
  description = ''A nim flavor of pytorch'';
  inputs.src-torch-v0_2_3.flake = false;
  inputs.src-torch-v0_2_3.type = "github";
  inputs.src-torch-v0_2_3.owner = "fragcolor-xyz";
  inputs.src-torch-v0_2_3.repo = "nimtorch";
  inputs.src-torch-v0_2_3.ref = "refs/tags/v0.2.3";
  
  
  inputs."fragments".type = "github";
  inputs."fragments".owner = "riinr";
  inputs."fragments".repo = "flake-nimble";
  inputs."fragments".ref = "flake-pinning";
  inputs."fragments".dir = "nimpkgs/f/fragments";

  outputs = { self, nixpkgs, src-torch-v0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-torch-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''A nim flavor of pytorch'';
  inputs.src-torch-v0_1_8.flake = false;
  inputs.src-torch-v0_1_8.type = "github";
  inputs.src-torch-v0_1_8.owner = "fragcolor-xyz";
  inputs.src-torch-v0_1_8.repo = "nimtorch";
  inputs.src-torch-v0_1_8.ref = "refs/tags/v0.1.8";
  
  
  inputs."fragments".url = "path:../../../f/fragments";
  inputs."fragments".type = "github";
  inputs."fragments".owner = "riinr";
  inputs."fragments".repo = "flake-nimble";
  inputs."fragments".ref = "flake-pinning";
  inputs."fragments".dir = "nimpkgs/f/fragments";

  outputs = { self, nixpkgs, src-torch-v0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-torch-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
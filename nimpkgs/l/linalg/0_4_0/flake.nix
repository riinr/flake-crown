{
  description = ''Linear algebra for Nim'';
  inputs.src-linalg-0_4_0.flake = false;
  inputs.src-linalg-0_4_0.type = "github";
  inputs.src-linalg-0_4_0.owner = "andreaferretti";
  inputs.src-linalg-0_4_0.repo = "linear-algebra";
  inputs.src-linalg-0_4_0.ref = "refs/tags/0.4.0";
  
  
  inputs."nimblas".type = "github";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".repo = "flake-nimble";
  inputs."nimblas".ref = "flake-pinning";
  inputs."nimblas".dir = "nimpkgs/n/nimblas";

  outputs = { self, nixpkgs, src-linalg-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linalg-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linalg-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Collection of math routines for 2d and 3d graphics.'';
  inputs.src-vmath-0_3_0.flake = false;
  inputs.src-vmath-0_3_0.type = "github";
  inputs.src-vmath-0_3_0.owner = "treeform";
  inputs.src-vmath-0_3_0.repo = "vmath";
  inputs.src-vmath-0_3_0.ref = "refs/tags/0.3.0";
  
  
  inputs."mddoc".type = "github";
  inputs."mddoc".owner = "riinr";
  inputs."mddoc".repo = "flake-nimble";
  inputs."mddoc".ref = "flake-pinning";
  inputs."mddoc".dir = "nimpkgs/m/mddoc";

  outputs = { self, nixpkgs, src-vmath-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmath-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmath-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
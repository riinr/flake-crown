{
  description = ''Migration manager for Norm.'';
  inputs.src-norman-1_0_2.flake = false;
  inputs.src-norman-1_0_2.type = "github";
  inputs.src-norman-1_0_2.owner = "moigagoo";
  inputs.src-norman-1_0_2.repo = "norman";
  inputs.src-norman-1_0_2.ref = "refs/tags/1.0.2";
  
  
  inputs."norm".url = "path:../../../n/norm";
  inputs."norm".type = "github";
  inputs."norm".owner = "riinr";
  inputs."norm".repo = "flake-nimble";
  inputs."norm".ref = "flake-pinning";
  inputs."norm".dir = "nimpkgs/n/norm";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-norman-1_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norman-1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norman-1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Nim ORM.'';
  inputs.src-norm-2_2_5.flake = false;
  inputs.src-norm-2_2_5.type = "github";
  inputs.src-norm-2_2_5.owner = "moigagoo";
  inputs.src-norm-2_2_5.repo = "norm";
  inputs.src-norm-2_2_5.ref = "refs/tags/2.2.5";
  
  
  inputs."ndb".url = "path:../../../n/ndb";
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-norm-2_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-2_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-2_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Nim ORM.'';
  inputs.src-norm-1_0_15.flake = false;
  inputs.src-norm-1_0_15.type = "github";
  inputs.src-norm-1_0_15.owner = "moigagoo";
  inputs.src-norm-1_0_15.repo = "norm";
  inputs.src-norm-1_0_15.ref = "refs/tags/1.0.15";
  
  
  inputs."ndb".url = "path:../../../n/ndb";
  inputs."ndb".type = "github";
  inputs."ndb".owner = "riinr";
  inputs."ndb".repo = "flake-nimble";
  inputs."ndb".ref = "flake-pinning";
  inputs."ndb".dir = "nimpkgs/n/ndb";

  outputs = { self, nixpkgs, src-norm-1_0_15, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-norm-1_0_15;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-norm-1_0_15"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
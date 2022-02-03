{
  description = ''nim tasks apply to git hooks'';
  inputs.src-stage-master.flake = false;
  inputs.src-stage-master.type = "github";
  inputs.src-stage-master.owner = "bung87";
  inputs.src-stage-master.repo = "stage";
  inputs.src-stage-master.ref = "refs/heads/master";
  
  
  inputs."shell".url = "path:../../../s/shell";
  inputs."shell".type = "github";
  inputs."shell".owner = "riinr";
  inputs."shell".repo = "flake-nimble";
  inputs."shell".ref = "flake-pinning";
  inputs."shell".dir = "nimpkgs/s/shell";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-stage-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stage-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-stage-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
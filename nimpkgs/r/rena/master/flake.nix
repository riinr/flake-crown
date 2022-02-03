{
  description = ''rena is a tiny fire/directory renaming command.'';
  inputs.src-rena-master.flake = false;
  inputs.src-rena-master.type = "github";
  inputs.src-rena-master.owner = "jiro4989";
  inputs.src-rena-master.repo = "rena";
  inputs.src-rena-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-rena-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rena-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rena-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
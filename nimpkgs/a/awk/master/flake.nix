{
  description = ''Nim for awk programmers'';
  inputs.src-awk-master.flake = false;
  inputs.src-awk-master.type = "github";
  inputs.src-awk-master.owner = "greencardamom";
  inputs.src-awk-master.repo = "awk";
  inputs.src-awk-master.ref = "refs/heads/master";
  
  
  inputs."nre".url = "path:../../../n/nre";
  inputs."nre".type = "github";
  inputs."nre".owner = "riinr";
  inputs."nre".repo = "flake-nimble";
  inputs."nre".ref = "flake-pinning";
  inputs."nre".dir = "nimpkgs/n/nre";

  outputs = { self, nixpkgs, src-awk-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awk-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-awk-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
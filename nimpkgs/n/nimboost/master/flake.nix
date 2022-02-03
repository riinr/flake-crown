{
  description = ''Additions to the Nim's standard library, like boost for C++'';
  inputs.src-nimboost-master.flake = false;
  inputs.src-nimboost-master.type = "github";
  inputs.src-nimboost-master.owner = "vegansk";
  inputs.src-nimboost-master.repo = "nimboost";
  inputs.src-nimboost-master.ref = "refs/heads/master";
  
  
  inputs."patty".url = "path:../../../p/patty";
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";

  outputs = { self, nixpkgs, src-nimboost-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimboost-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
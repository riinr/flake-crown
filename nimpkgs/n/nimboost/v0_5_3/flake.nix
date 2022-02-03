{
  description = ''Additions to the Nim's standard library, like boost for C++'';
  inputs.src-nimboost-v0_5_3.flake = false;
  inputs.src-nimboost-v0_5_3.type = "github";
  inputs.src-nimboost-v0_5_3.owner = "vegansk";
  inputs.src-nimboost-v0_5_3.repo = "nimboost";
  inputs.src-nimboost-v0_5_3.ref = "refs/tags/v0.5.3";
  
  
  inputs."patty".url = "path:../../../p/patty";
  inputs."patty".type = "github";
  inputs."patty".owner = "riinr";
  inputs."patty".repo = "flake-nimble";
  inputs."patty".ref = "flake-pinning";
  inputs."patty".dir = "nimpkgs/p/patty";

  outputs = { self, nixpkgs, src-nimboost-v0_5_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimboost-v0_5_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimboost-v0_5_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
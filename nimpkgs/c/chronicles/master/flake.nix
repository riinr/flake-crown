{
  description = ''A crafty implementation of structured logging for Nim'';
  inputs.src-chronicles-master.flake = false;
  inputs.src-chronicles-master.type = "github";
  inputs.src-chronicles-master.owner = "status-im";
  inputs.src-chronicles-master.repo = "nim-chronicles";
  inputs.src-chronicles-master.ref = "refs/heads/master";
  
  
  inputs."testutils".url = "path:../../../t/testutils";
  inputs."testutils".type = "github";
  inputs."testutils".owner = "riinr";
  inputs."testutils".repo = "flake-nimble";
  inputs."testutils".ref = "flake-pinning";
  inputs."testutils".dir = "nimpkgs/t/testutils";

  
  inputs."json_serialization".url = "path:../../../j/json_serialization";
  inputs."json_serialization".type = "github";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".repo = "flake-nimble";
  inputs."json_serialization".ref = "flake-pinning";
  inputs."json_serialization".dir = "nimpkgs/j/json_serialization";

  outputs = { self, nixpkgs, src-chronicles-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chronicles-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chronicles-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
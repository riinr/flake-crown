{
  description = ''Micro benchmarking tool to measure speed of code, with the goal of optimizing it.'';
  inputs.src-nimbench-v0_2_1.flake = false;
  inputs.src-nimbench-v0_2_1.type = "github";
  inputs.src-nimbench-v0_2_1.owner = "ivankoster";
  inputs.src-nimbench-v0_2_1.repo = "nimbench";
  inputs.src-nimbench-v0_2_1.ref = "refs/tags/v0.2.1";
  
  
  inputs."strfmt".url = "path:../../../s/strfmt";
  inputs."strfmt".type = "github";
  inputs."strfmt".owner = "riinr";
  inputs."strfmt".repo = "flake-nimble";
  inputs."strfmt".ref = "flake-pinning";
  inputs."strfmt".dir = "nimpkgs/s/strfmt";

  outputs = { self, nixpkgs, src-nimbench-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbench-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbench-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
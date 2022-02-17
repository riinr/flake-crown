{
  description = ''Micro benchmarking tool to measure speed of code, with the goal of optimizing it.'';
  inputs.src-nimbench-v0_2_0.flake = false;
  inputs.src-nimbench-v0_2_0.type = "github";
  inputs.src-nimbench-v0_2_0.owner = "ivankoster";
  inputs.src-nimbench-v0_2_0.repo = "nimbench";
  inputs.src-nimbench-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."strfmt".type = "github";
  inputs."strfmt".owner = "riinr";
  inputs."strfmt".repo = "flake-nimble";
  inputs."strfmt".ref = "flake-pinning";
  inputs."strfmt".dir = "nimpkgs/s/strfmt";

  outputs = { self, nixpkgs, src-nimbench-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbench-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimbench-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
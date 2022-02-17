{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
  inputs.src-hastyscribe-v1_0_9.flake = false;
  inputs.src-hastyscribe-v1_0_9.type = "github";
  inputs.src-hastyscribe-v1_0_9.owner = "h3rald";
  inputs.src-hastyscribe-v1_0_9.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_0_9.ref = "refs/tags/v1.0.9";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-hastyscribe-v1_0_9, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastyscribe-v1_0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
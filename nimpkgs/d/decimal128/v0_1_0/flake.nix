{
  description = ''Decimal type support based on the IEEE 754 2008 specification.'';
  inputs.src-decimal128-v0_1_0.flake = false;
  inputs.src-decimal128-v0_1_0.type = "github";
  inputs.src-decimal128-v0_1_0.owner = "JohnAD";
  inputs.src-decimal128-v0_1_0.repo = "decimal128";
  inputs.src-decimal128-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-decimal128-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-decimal128-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-decimal128-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
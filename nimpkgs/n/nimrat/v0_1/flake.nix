{
  description = ''Module for working with rational numbers (fractions)'';
  inputs.src-nimrat-v0_1.flake = false;
  inputs.src-nimrat-v0_1.type = "github";
  inputs.src-nimrat-v0_1.owner = "apense";
  inputs.src-nimrat-v0_1.repo = "nimrat";
  inputs.src-nimrat-v0_1.ref = "refs/tags/v0.1";
  
  outputs = { self, nixpkgs, src-nimrat-v0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimrat-v0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimrat-v0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
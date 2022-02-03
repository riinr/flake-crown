{
  description = ''Pseudo-random number generation library inspired by Python'';
  inputs.src-random-v0_5_7.flake = false;
  inputs.src-random-v0_5_7.type = "github";
  inputs.src-random-v0_5_7.owner = "oprypin";
  inputs.src-random-v0_5_7.repo = "nim-random";
  inputs.src-random-v0_5_7.ref = "refs/tags/v0.5.7";
  
  outputs = { self, nixpkgs, src-random-v0_5_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-random-v0_5_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-random-v0_5_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
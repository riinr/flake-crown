{
  description = ''Nim functional programming library'';
  inputs.src-nimfp-v0_0_4.flake = false;
  inputs.src-nimfp-v0_0_4.type = "github";
  inputs.src-nimfp-v0_0_4.owner = "vegansk";
  inputs.src-nimfp-v0_0_4.repo = "nimfp";
  inputs.src-nimfp-v0_0_4.ref = "refs/tags/v0.0.4";
  
  outputs = { self, nixpkgs, src-nimfp-v0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfp-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfp-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
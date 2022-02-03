{
  description = ''minimal, performant mass file renamer'';
  inputs.src-rn-v0_0_5.flake = false;
  inputs.src-rn-v0_0_5.type = "github";
  inputs.src-rn-v0_0_5.owner = "xioren";
  inputs.src-rn-v0_0_5.repo = "rn";
  inputs.src-rn-v0_0_5.ref = "refs/tags/v0.0.5";
  
  outputs = { self, nixpkgs, src-rn-v0_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rn-v0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rn-v0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
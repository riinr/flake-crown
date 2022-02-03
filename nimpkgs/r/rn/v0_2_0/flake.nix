{
  description = ''minimal, performant mass file renamer'';
  inputs.src-rn-v0_2_0.flake = false;
  inputs.src-rn-v0_2_0.type = "github";
  inputs.src-rn-v0_2_0.owner = "xioren";
  inputs.src-rn-v0_2_0.repo = "rn";
  inputs.src-rn-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-rn-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rn-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rn-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
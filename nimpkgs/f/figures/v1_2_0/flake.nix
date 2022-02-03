{
  description = ''unicode symbols'';
  inputs.src-figures-v1_2_0.flake = false;
  inputs.src-figures-v1_2_0.type = "github";
  inputs.src-figures-v1_2_0.owner = "lmariscal";
  inputs.src-figures-v1_2_0.repo = "figures";
  inputs.src-figures-v1_2_0.ref = "refs/tags/v1.2.0";
  
  outputs = { self, nixpkgs, src-figures-v1_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-figures-v1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-figures-v1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
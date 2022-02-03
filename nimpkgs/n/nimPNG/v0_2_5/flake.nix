{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
  inputs.src-nimPNG-v0_2_5.flake = false;
  inputs.src-nimPNG-v0_2_5.type = "github";
  inputs.src-nimPNG-v0_2_5.owner = "jangko";
  inputs.src-nimPNG-v0_2_5.repo = "nimPNG";
  inputs.src-nimPNG-v0_2_5.ref = "refs/tags/v0.2.5";
  
  outputs = { self, nixpkgs, src-nimPNG-v0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPNG-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimPNG-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
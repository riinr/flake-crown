{
  description = ''Kakoune plugin for color preview'';
  inputs.src-colorcol-v0_5_1.flake = false;
  inputs.src-colorcol-v0_5_1.type = "github";
  inputs.src-colorcol-v0_5_1.owner = "SolitudeSF";
  inputs.src-colorcol-v0_5_1.repo = "colorcol";
  inputs.src-colorcol-v0_5_1.ref = "refs/tags/v0.5.1";
  
  outputs = { self, nixpkgs, src-colorcol-v0_5_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorcol-v0_5_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-colorcol-v0_5_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
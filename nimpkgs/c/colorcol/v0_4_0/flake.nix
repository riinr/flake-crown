{
  description = ''Kakoune plugin for color preview'';
  inputs.src-colorcol-v0_4_0.flake = false;
  inputs.src-colorcol-v0_4_0.type = "github";
  inputs.src-colorcol-v0_4_0.owner = "SolitudeSF";
  inputs.src-colorcol-v0_4_0.repo = "colorcol";
  inputs.src-colorcol-v0_4_0.ref = "refs/tags/v0.4.0";
  
  outputs = { self, nixpkgs, src-colorcol-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorcol-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-colorcol-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
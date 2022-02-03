{
  description = ''Print fabulously in your terminal'';
  inputs.src-fab-v0_2_0.flake = false;
  inputs.src-fab-v0_2_0.type = "github";
  inputs.src-fab-v0_2_0.owner = "icyphox";
  inputs.src-fab-v0_2_0.repo = "fab";
  inputs.src-fab-v0_2_0.ref = "refs/tags/v0.2.0";
  
  outputs = { self, nixpkgs, src-fab-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fab-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fab-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
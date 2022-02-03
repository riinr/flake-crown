{
  description = ''Sitmo parallel random number generator in Nim'';
  inputs.src-sitmo-v0_0_0.flake = false;
  inputs.src-sitmo-v0_0_0.type = "github";
  inputs.src-sitmo-v0_0_0.owner = "jxy";
  inputs.src-sitmo-v0_0_0.repo = "sitmo";
  inputs.src-sitmo-v0_0_0.ref = "refs/tags/v0.0.0";
  
  outputs = { self, nixpkgs, src-sitmo-v0_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sitmo-v0_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sitmo-v0_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
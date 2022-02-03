{
  description = ''`rm` files without fear'';
  inputs.src-crap-v0_1_0.flake = false;
  inputs.src-crap-v0_1_0.type = "github";
  inputs.src-crap-v0_1_0.owner = "icyphox";
  inputs.src-crap-v0_1_0.repo = "crap";
  inputs.src-crap-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-crap-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crap-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-crap-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
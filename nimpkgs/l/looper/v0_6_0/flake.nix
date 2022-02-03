{
  description = ''for loop macros'';
  inputs.src-looper-v0_6_0.flake = false;
  inputs.src-looper-v0_6_0.type = "github";
  inputs.src-looper-v0_6_0.owner = "planetis-m";
  inputs.src-looper-v0_6_0.repo = "looper";
  inputs.src-looper-v0_6_0.ref = "refs/tags/v0.6.0";
  
  outputs = { self, nixpkgs, src-looper-v0_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-looper-v0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-looper-v0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
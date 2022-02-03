{
  description = ''The Nim framework for VK API.'';
  inputs.src-shizuka-nightly-0_3_0.flake = false;
  inputs.src-shizuka-nightly-0_3_0.type = "github";
  inputs.src-shizuka-nightly-0_3_0.owner = "ethosa";
  inputs.src-shizuka-nightly-0_3_0.repo = "shizuka";
  inputs.src-shizuka-nightly-0_3_0.ref = "refs/tags/nightly-0.3.0";
  
  outputs = { self, nixpkgs, src-shizuka-nightly-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shizuka-nightly-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shizuka-nightly-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
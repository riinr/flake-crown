{
  description = ''Windows epoll wrapper.'';
  inputs.src-wepoll-v0_1_0.flake = false;
  inputs.src-wepoll-v0_1_0.type = "github";
  inputs.src-wepoll-v0_1_0.owner = "xflywind";
  inputs.src-wepoll-v0_1_0.repo = "wepoll";
  inputs.src-wepoll-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-wepoll-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wepoll-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wepoll-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
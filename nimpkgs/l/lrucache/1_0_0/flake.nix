{
  description = ''Least recently used (LRU) cache'';
  inputs.src-lrucache-1_0_0.flake = false;
  inputs.src-lrucache-1_0_0.type = "github";
  inputs.src-lrucache-1_0_0.owner = "jackhftang";
  inputs.src-lrucache-1_0_0.repo = "lrucache";
  inputs.src-lrucache-1_0_0.ref = "refs/tags/1.0.0";
  
  outputs = { self, nixpkgs, src-lrucache-1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lrucache-1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lrucache-1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
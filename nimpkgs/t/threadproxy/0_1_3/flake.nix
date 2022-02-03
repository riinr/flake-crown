{
  description = ''Simplify Nim Inter-Thread Communication'';
  inputs.src-threadproxy-0_1_3.flake = false;
  inputs.src-threadproxy-0_1_3.type = "github";
  inputs.src-threadproxy-0_1_3.owner = "jackhftang";
  inputs.src-threadproxy-0_1_3.repo = "threadproxy.nim";
  inputs.src-threadproxy-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-threadproxy-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-threadproxy-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-threadproxy-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
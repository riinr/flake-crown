{
  description = ''Simplify Nim Inter-Thread Communication'';
  inputs.src-threadproxy-0_2_2.flake = false;
  inputs.src-threadproxy-0_2_2.type = "github";
  inputs.src-threadproxy-0_2_2.owner = "jackhftang";
  inputs.src-threadproxy-0_2_2.repo = "threadproxy.nim";
  inputs.src-threadproxy-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-threadproxy-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-threadproxy-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-threadproxy-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''A Funge-98 interpreter written in nim'';
  inputs.src-nimfunge98-1_1_0.flake = false;
  inputs.src-nimfunge98-1_1_0.type = "other";
  inputs.src-nimfunge98-1_1_0.owner = "adyxax";
  inputs.src-nimfunge98-1_1_0.repo = "nimfunge98";
  inputs.src-nimfunge98-1_1_0.ref = "refs/tags/1.1.0";
  
  outputs = { self, nixpkgs, src-nimfunge98-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfunge98-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfunge98-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
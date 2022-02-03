{
  description = ''A parser for Jupyter notebooks.'';
  inputs.src-holst-0_1_5.flake = false;
  inputs.src-holst-0_1_5.type = "github";
  inputs.src-holst-0_1_5.owner = "ruivieira";
  inputs.src-holst-0_1_5.repo = "nim-holst";
  inputs.src-holst-0_1_5.ref = "refs/tags/0.1.5";
  
  outputs = { self, nixpkgs, src-holst-0_1_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-holst-0_1_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-holst-0_1_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Matrix library'';
  inputs.src-manu-v2_1_1.flake = false;
  inputs.src-manu-v2_1_1.type = "github";
  inputs.src-manu-v2_1_1.owner = "planetis-m";
  inputs.src-manu-v2_1_1.repo = "manu";
  inputs.src-manu-v2_1_1.ref = "refs/tags/v2.1.1";
  
  outputs = { self, nixpkgs, src-manu-v2_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-v2_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-manu-v2_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''Matrix library'';
  inputs.src-manu-v2_1_2.flake = false;
  inputs.src-manu-v2_1_2.type = "github";
  inputs.src-manu-v2_1_2.owner = "planetis-m";
  inputs.src-manu-v2_1_2.repo = "manu";
  inputs.src-manu-v2_1_2.ref = "refs/tags/v2.1.2";
  
  outputs = { self, nixpkgs, src-manu-v2_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-v2_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-manu-v2_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
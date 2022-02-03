{
  description = ''Matrix library'';
  inputs.src-manu-v2_0.flake = false;
  inputs.src-manu-v2_0.type = "github";
  inputs.src-manu-v2_0.owner = "planetis-m";
  inputs.src-manu-v2_0.repo = "manu";
  inputs.src-manu-v2_0.ref = "refs/tags/v2.0";
  
  outputs = { self, nixpkgs, src-manu-v2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-manu-v2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-manu-v2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
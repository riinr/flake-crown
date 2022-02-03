{
  description = ''TeaFiles provide fast read/write access to time series data'';
  inputs.src-teafiles-0_1_4.flake = false;
  inputs.src-teafiles-0_1_4.type = "github";
  inputs.src-teafiles-0_1_4.owner = "andreaferretti";
  inputs.src-teafiles-0_1_4.repo = "nim-teafiles";
  inputs.src-teafiles-0_1_4.ref = "refs/tags/0.1.4";
  
  outputs = { self, nixpkgs, src-teafiles-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-teafiles-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-teafiles-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
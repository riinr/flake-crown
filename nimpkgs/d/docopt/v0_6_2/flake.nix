{
  description = ''Command-line args parser based on Usage message'';
  inputs.src-docopt-v0_6_2.flake = false;
  inputs.src-docopt-v0_6_2.type = "github";
  inputs.src-docopt-v0_6_2.owner = "docopt";
  inputs.src-docopt-v0_6_2.repo = "docopt.nim";
  inputs.src-docopt-v0_6_2.ref = "refs/tags/v0.6.2";
  
  outputs = { self, nixpkgs, src-docopt-v0_6_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docopt-v0_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-docopt-v0_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
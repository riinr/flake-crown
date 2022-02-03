{
  description = ''Command-line args parser based on Usage message'';
  inputs.src-docopt-v0_6_0.flake = false;
  inputs.src-docopt-v0_6_0.type = "github";
  inputs.src-docopt-v0_6_0.owner = "docopt";
  inputs.src-docopt-v0_6_0.repo = "docopt.nim";
  inputs.src-docopt-v0_6_0.ref = "refs/tags/v0.6.0";
  
  outputs = { self, nixpkgs, src-docopt-v0_6_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-docopt-v0_6_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-docopt-v0_6_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
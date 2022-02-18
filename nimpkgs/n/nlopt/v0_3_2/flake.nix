{
  description = ''A wrapper for the non-linear optimization C library Nlopt'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nlopt-v0_3_2.flake = false;
  inputs.src-nlopt-v0_3_2.type = "github";
  inputs.src-nlopt-v0_3_2.owner = "Vindaar";
  inputs.src-nlopt-v0_3_2.repo = "nimnlopt";
  inputs.src-nlopt-v0_3_2.ref = "refs/tags/v0.3.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nlopt-v0_3_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nlopt-v0_3_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nlopt-v0_3_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
{
  description = ''gnuplot interface'';
  inputs.src-gnuplotlib-v2_5_0.flake = false;
  inputs.src-gnuplotlib-v2_5_0.type = "github";
  inputs.src-gnuplotlib-v2_5_0.owner = "planetis-m";
  inputs.src-gnuplotlib-v2_5_0.repo = "gnuplotlib";
  inputs.src-gnuplotlib-v2_5_0.ref = "refs/tags/v2.5.0";
  
  outputs = { self, nixpkgs, src-gnuplotlib-v2_5_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gnuplotlib-v2_5_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gnuplotlib-v2_5_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
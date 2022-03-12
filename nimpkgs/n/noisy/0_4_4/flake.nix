{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-noisy-0_4_4.flake = false;
  inputs.src-noisy-0_4_4.owner = "guzba";
  inputs.src-noisy-0_4_4.ref   = "refs/tags/0.4.4";
  inputs.src-noisy-0_4_4.repo  = "noisy";
  inputs.src-noisy-0_4_4.type  = "github";
  
  inputs."nimsimd".dir   = "nimpkgs/n/nimsimd";
  inputs."nimsimd".owner = "riinr";
  inputs."nimsimd".ref   = "flake-pinning";
  inputs."nimsimd".repo  = "flake-nimble";
  inputs."nimsimd".type  = "github";
  inputs."nimsimd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-noisy-0_4_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-noisy-0_4_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''SIMD-accelerated noise generation (Simplex, Perlin).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-noisy-master.flake = false;
  inputs.src-noisy-master.owner = "guzba";
  inputs.src-noisy-master.ref   = "refs/heads/master";
  inputs.src-noisy-master.repo  = "noisy";
  inputs.src-noisy-master.type  = "github";
  
  inputs."nimsimd".owner = "nim-nix-pkgs";
  inputs."nimsimd".ref   = "master";
  inputs."nimsimd".repo  = "nimsimd";
  inputs."nimsimd".type  = "github";
  inputs."nimsimd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-noisy-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-noisy-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
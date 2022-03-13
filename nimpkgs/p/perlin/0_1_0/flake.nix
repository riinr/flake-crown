{
  description = ''Perlin noise and Simplex noise generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-perlin-0_1_0.flake = false;
  inputs.src-perlin-0_1_0.owner = "Nycto";
  inputs.src-perlin-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-perlin-0_1_0.repo  = "PerlinNim";
  inputs.src-perlin-0_1_0.type  = "github";
  
  inputs."random".owner = "nim-nix-pkgs";
  inputs."random".ref   = "master";
  inputs."random".repo  = "random";
  inputs."random".type  = "github";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-perlin-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-perlin-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
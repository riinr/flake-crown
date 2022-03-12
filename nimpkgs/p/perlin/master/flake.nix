{
  description = ''Perlin noise and Simplex noise generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-perlin-master.flake = false;
  inputs.src-perlin-master.owner = "Nycto";
  inputs.src-perlin-master.ref   = "refs/heads/master";
  inputs.src-perlin-master.repo  = "PerlinNim";
  inputs.src-perlin-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-perlin-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-perlin-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
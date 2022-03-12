{
  description = ''Nim implementation of the standard unix drand48 pseudo random number generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-drand48-v1_1_1.flake = false;
  inputs.src-drand48-v1_1_1.owner = "JeffersonLab";
  inputs.src-drand48-v1_1_1.ref   = "refs/tags/v1.1.1";
  inputs.src-drand48-v1_1_1.repo  = "drand48";
  inputs.src-drand48-v1_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-drand48-v1_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-drand48-v1_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
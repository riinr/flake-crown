{
  description = ''Nim implementation of standard unix drand48 random number generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-drand48-master.flake = false;
  inputs.src-drand48-master.owner = "JeffersonLab";
  inputs.src-drand48-master.ref   = "master";
  inputs.src-drand48-master.repo  = "drand48";
  inputs.src-drand48-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-drand48-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-drand48-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Benchmarking wrapper around getrusage()'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-getr-master.flake = false;
  inputs.src-getr-master.owner = "jrfondren";
  inputs.src-getr-master.ref   = "master";
  inputs.src-getr-master.repo  = "getr-nim";
  inputs.src-getr-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-getr-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-getr-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
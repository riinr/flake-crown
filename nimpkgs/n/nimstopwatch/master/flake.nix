{
  description = ''Command line stopwatch written in Nim with split / lap support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimstopwatch-master.flake = false;
  inputs.src-nimstopwatch-master.owner = "twist-vector";
  inputs.src-nimstopwatch-master.ref   = "master";
  inputs.src-nimstopwatch-master.repo  = "nim-stopwatch.git";
  inputs.src-nimstopwatch-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimstopwatch-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimstopwatch-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
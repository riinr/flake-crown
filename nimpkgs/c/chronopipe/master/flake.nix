{
  description = ''Show start/end datetime and duration of a command-line process using pipe.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chronopipe-master.flake = false;
  inputs.src-chronopipe-master.owner = "williamd1k0";
  inputs.src-chronopipe-master.ref   = "refs/heads/master";
  inputs.src-chronopipe-master.repo  = "chrono";
  inputs.src-chronopipe-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chronopipe-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chronopipe-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
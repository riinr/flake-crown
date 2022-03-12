{
  description = ''A random variable generating library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-randgen-master.flake = false;
  inputs.src-randgen-master.owner = "YesDrX";
  inputs.src-randgen-master.ref   = "refs/heads/master";
  inputs.src-randgen-master.repo  = "randgen";
  inputs.src-randgen-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-randgen-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-randgen-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
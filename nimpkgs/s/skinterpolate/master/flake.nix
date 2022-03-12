{
  description = ''Interpolation routines for data and animation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-skinterpolate-master.flake = false;
  inputs.src-skinterpolate-master.owner = "Skrylar";
  inputs.src-skinterpolate-master.ref   = "refs/heads/master";
  inputs.src-skinterpolate-master.repo  = "skInterpolate";
  inputs.src-skinterpolate-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-skinterpolate-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-skinterpolate-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
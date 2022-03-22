{
  description = ''A simple bitarray library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimbitarray-master.flake = false;
  inputs.src-nimbitarray-master.owner = "YesDrX";
  inputs.src-nimbitarray-master.ref   = "master";
  inputs.src-nimbitarray-master.repo  = "bitarray";
  inputs.src-nimbitarray-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimbitarray-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimbitarray-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
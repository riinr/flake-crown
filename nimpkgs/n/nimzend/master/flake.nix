{
  description = ''Native Nim Zend API glue for easy PHP extension development.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimzend-master.flake = false;
  inputs.src-nimzend-master.owner = "metatexx";
  inputs.src-nimzend-master.ref   = "master";
  inputs.src-nimzend-master.repo  = "nimzend";
  inputs.src-nimzend-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimzend-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimzend-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
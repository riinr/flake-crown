{
  description = ''A library for cleanly creating an object or tuple based on another object or tuple'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-basedOn-master.flake = false;
  inputs.src-basedOn-master.owner = "KaceCottam";
  inputs.src-basedOn-master.ref   = "refs/heads/master";
  inputs.src-basedOn-master.repo  = "basedOn";
  inputs.src-basedOn-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-basedOn-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-basedOn-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
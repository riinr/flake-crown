{
  description = ''A library to interface between Nim and R'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rnim-master.flake = false;
  inputs.src-rnim-master.ref   = "refs/heads/master";
  inputs.src-rnim-master.owner = "SciNim";
  inputs.src-rnim-master.repo  = "rnim";
  inputs.src-rnim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rnim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rnim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
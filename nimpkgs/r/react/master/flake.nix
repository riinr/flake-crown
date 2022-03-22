{
  description = ''Example React single page application'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-react-master.flake = false;
  inputs.src-react-master.ref   = "refs/heads/master";
  inputs.src-react-master.owner = "andreaferretti";
  inputs.src-react-master.repo  = "react.nim";
  inputs.src-react-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-react-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-react-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
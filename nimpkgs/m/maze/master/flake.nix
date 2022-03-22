{
  description = ''A command and library to generate mazes'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-maze-master.flake = false;
  inputs.src-maze-master.ref   = "refs/heads/master";
  inputs.src-maze-master.owner = "jiro4989";
  inputs.src-maze-master.repo  = "maze";
  inputs.src-maze-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-maze-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-maze-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
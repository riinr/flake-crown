{
  description = ''A tiny calendar program'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-calendar-master.flake = false;
  inputs.src-calendar-master.ref   = "refs/heads/master";
  inputs.src-calendar-master.owner = "adam-mcdaniel";
  inputs.src-calendar-master.repo  = "calendar";
  inputs.src-calendar-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-calendar-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-calendar-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
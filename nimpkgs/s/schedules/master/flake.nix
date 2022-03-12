{
  description = ''A Nim scheduler library that lets you kick off jobs at regular intervals.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-schedules-master.flake = false;
  inputs.src-schedules-master.owner = "soasme";
  inputs.src-schedules-master.ref   = "refs/heads/master";
  inputs.src-schedules-master.repo  = "nim-schedules";
  inputs.src-schedules-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-schedules-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-schedules-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
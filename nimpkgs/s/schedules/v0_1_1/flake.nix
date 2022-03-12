{
  description = ''A Nim scheduler library that lets you kick off jobs at regular intervals.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-schedules-v0_1_1.flake = false;
  inputs.src-schedules-v0_1_1.owner = "soasme";
  inputs.src-schedules-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-schedules-v0_1_1.repo  = "nim-schedules";
  inputs.src-schedules-v0_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-schedules-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-schedules-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
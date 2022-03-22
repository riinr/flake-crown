{
  description = ''Calendars, Timestamps and Timezones utilities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chrono-master.flake = false;
  inputs.src-chrono-master.ref   = "refs/heads/master";
  inputs.src-chrono-master.owner = "treeform";
  inputs.src-chrono-master.repo  = "chrono";
  inputs.src-chrono-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chrono-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chrono-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
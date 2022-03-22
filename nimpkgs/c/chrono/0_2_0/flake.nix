{
  description = ''Calendars, Timestamps and Timezones utilities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chrono-0_2_0.flake = false;
  inputs.src-chrono-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-chrono-0_2_0.owner = "treeform";
  inputs.src-chrono-0_2_0.repo  = "chrono";
  inputs.src-chrono-0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chrono-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chrono-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
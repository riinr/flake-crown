{
  description = ''Battery widget for command prompt. Written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-battery_widget-master.flake = false;
  inputs.src-battery_widget-master.ref   = "refs/heads/master";
  inputs.src-battery_widget-master.owner = "Cu7ious";
  inputs.src-battery_widget-master.repo  = "nim-battery-widget";
  inputs.src-battery_widget-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-battery_widget-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-battery_widget-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
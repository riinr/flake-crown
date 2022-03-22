{
  description = ''Nim GUI Automation Linux, simulate user interaction, mouse and keyboard.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xdo-master.flake = false;
  inputs.src-xdo-master.ref   = "refs/heads/master";
  inputs.src-xdo-master.owner = "juancarlospaco";
  inputs.src-xdo-master.repo  = "nim-xdo";
  inputs.src-xdo-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xdo-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-xdo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
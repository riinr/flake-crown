{
  description = ''The Nim badgemaker tool.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-badgemaker-master.flake = false;
  inputs.src-badgemaker-master.owner = "ethosa";
  inputs.src-badgemaker-master.ref   = "master";
  inputs.src-badgemaker-master.repo  = "badgemaker";
  inputs.src-badgemaker-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-badgemaker-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-badgemaker-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
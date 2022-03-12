{
  description = ''Websockets wrapper for nim js backend.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jswebsockets-master.flake = false;
  inputs.src-jswebsockets-master.owner = "stisa";
  inputs.src-jswebsockets-master.ref   = "refs/heads/master";
  inputs.src-jswebsockets-master.repo  = "jswebsockets";
  inputs.src-jswebsockets-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jswebsockets-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jswebsockets-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
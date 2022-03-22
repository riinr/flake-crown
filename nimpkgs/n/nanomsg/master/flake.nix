{
  description = ''Wrapper for nanomsg, a socket library that provides several common communication patterns. It aims to make the networking layer fast, scalable, and easy to use.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nanomsg-master.flake = false;
  inputs.src-nanomsg-master.owner = "def-";
  inputs.src-nanomsg-master.ref   = "master";
  inputs.src-nanomsg-master.repo  = "nim-nanomsg";
  inputs.src-nanomsg-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nanomsg-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nanomsg-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
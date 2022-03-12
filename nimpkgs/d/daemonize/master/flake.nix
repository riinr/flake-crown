{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-daemonize-master.flake = false;
  inputs.src-daemonize-master.owner = "OpenSystemsLab";
  inputs.src-daemonize-master.ref   = "refs/heads/master";
  inputs.src-daemonize-master.repo  = "daemonize.nim";
  inputs.src-daemonize-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-daemonize-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-daemonize-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
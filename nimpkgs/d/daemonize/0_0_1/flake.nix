{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-daemonize-0_0_1.flake = false;
  inputs.src-daemonize-0_0_1.owner = "OpenSystemsLab";
  inputs.src-daemonize-0_0_1.ref   = "refs/tags/0.0.1";
  inputs.src-daemonize-0_0_1.repo  = "daemonize.nim";
  inputs.src-daemonize-0_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-daemonize-0_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-daemonize-0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
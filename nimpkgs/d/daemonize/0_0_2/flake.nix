{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-daemonize-0_0_2.flake = false;
  inputs.src-daemonize-0_0_2.owner = "OpenSystemsLab";
  inputs.src-daemonize-0_0_2.ref   = "refs/tags/0.0.2";
  inputs.src-daemonize-0_0_2.repo  = "daemonize.nim";
  inputs.src-daemonize-0_0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-daemonize-0_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-daemonize-0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''SimpleHTTPServer module based on net sockets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-NimpleHTTPServer-master.flake = false;
  inputs.src-NimpleHTTPServer-master.ref   = "refs/heads/master";
  inputs.src-NimpleHTTPServer-master.owner = "Hydra820";
  inputs.src-NimpleHTTPServer-master.repo  = "NimpleHTTPServer";
  inputs.src-NimpleHTTPServer-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-NimpleHTTPServer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-NimpleHTTPServer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
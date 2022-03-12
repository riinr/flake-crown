{
  description = ''A tiny static file web server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimhttpd-master.flake = false;
  inputs.src-nimhttpd-master.owner = "h3rald";
  inputs.src-nimhttpd-master.ref   = "refs/heads/master";
  inputs.src-nimhttpd-master.repo  = "nimhttpd";
  inputs.src-nimhttpd-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimhttpd-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimhttpd-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
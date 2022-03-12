{
  description = ''A tiny static file web server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimhttpd-v1_0_6.flake = false;
  inputs.src-nimhttpd-v1_0_6.owner = "h3rald";
  inputs.src-nimhttpd-v1_0_6.ref   = "refs/tags/v1.0.6";
  inputs.src-nimhttpd-v1_0_6.repo  = "nimhttpd";
  inputs.src-nimhttpd-v1_0_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimhttpd-v1_0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimhttpd-v1_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
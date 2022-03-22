{
  description = ''A tiny static file web server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimhttpd-v1_0_5.flake = false;
  inputs.src-nimhttpd-v1_0_5.owner = "h3rald";
  inputs.src-nimhttpd-v1_0_5.ref   = "v1_0_5";
  inputs.src-nimhttpd-v1_0_5.repo  = "nimhttpd";
  inputs.src-nimhttpd-v1_0_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimhttpd-v1_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimhttpd-v1_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
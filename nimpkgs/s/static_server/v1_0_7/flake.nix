{
  description = ''A tiny static file web server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimhttpd-v1_0_7.flake = false;
  inputs.src-nimhttpd-v1_0_7.ref   = "refs/tags/v1.0.7";
  inputs.src-nimhttpd-v1_0_7.owner = "bung87";
  inputs.src-nimhttpd-v1_0_7.repo  = "nimhttpd";
  inputs.src-nimhttpd-v1_0_7.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimhttpd-v1_0_7"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimhttpd-v1_0_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
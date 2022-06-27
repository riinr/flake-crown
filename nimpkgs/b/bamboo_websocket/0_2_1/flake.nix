{
  description = ''This is a simple implementation of a WebSocket server with 100% Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bamboo_websocket-0_2_1.flake = false;
  inputs.src-bamboo_websocket-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-bamboo_websocket-0_2_1.owner = "obemaru4012";
  inputs.src-bamboo_websocket-0_2_1.repo  = "bamboo_websocket";
  inputs.src-bamboo_websocket-0_2_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bamboo_websocket-0_2_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-bamboo_websocket-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
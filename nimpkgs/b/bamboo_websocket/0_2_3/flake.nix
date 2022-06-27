{
  description = ''This is a simple implementation of a WebSocket server with 100% Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bamboo_websocket-0_2_3.flake = false;
  inputs.src-bamboo_websocket-0_2_3.ref   = "refs/tags/0.2.3";
  inputs.src-bamboo_websocket-0_2_3.owner = "obemaru4012";
  inputs.src-bamboo_websocket-0_2_3.repo  = "bamboo_websocket";
  inputs.src-bamboo_websocket-0_2_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bamboo_websocket-0_2_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-bamboo_websocket-0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
{
  description = ''Prepared SQL statement generator. A lightweight ORM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ormin-master.flake = false;
  inputs.src-ormin-master.ref   = "refs/heads/master";
  inputs.src-ormin-master.owner = "Araq";
  inputs.src-ormin-master.repo  = "ormin";
  inputs.src-ormin-master.type  = "github";
  
  inputs."websocket".owner = "nim-nix-pkgs";
  inputs."websocket".ref   = "master";
  inputs."websocket".repo  = "websocket";
  inputs."websocket".dir   = "0_5_0";
  inputs."websocket".type  = "github";
  inputs."websocket".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocket".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ormin-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ormin-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
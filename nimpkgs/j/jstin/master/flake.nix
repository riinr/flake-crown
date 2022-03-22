{
  description = ''JS {de,}serialization as it says on the tin'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jstin-master.flake = false;
  inputs.src-jstin-master.ref   = "refs/heads/master";
  inputs.src-jstin-master.owner = "nim-lang";
  inputs.src-jstin-master.repo  = "jstin";
  inputs.src-jstin-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jstin-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jstin-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
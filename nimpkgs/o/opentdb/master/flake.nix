{
  description = ''Wrapper around the open trivia db api'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-opentdb-master.flake = false;
  inputs.src-opentdb-master.owner = "ire4ever1190";
  inputs.src-opentdb-master.ref   = "refs/heads/master";
  inputs.src-opentdb-master.repo  = "nim-opentmdb";
  inputs.src-opentdb-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-opentdb-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-opentdb-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
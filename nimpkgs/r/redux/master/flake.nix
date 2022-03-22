{
  description = ''Predictable state container.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-redux-master.flake = false;
  inputs.src-redux-master.owner = "pragmagic";
  inputs.src-redux-master.ref   = "master";
  inputs.src-redux-master.repo  = "redux.nim";
  inputs.src-redux-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-redux-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-redux-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Bindings and a high-level interface for MongoDB'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mongo-master.flake = false;
  inputs.src-mongo-master.owner = "nim-lang";
  inputs.src-mongo-master.ref   = "refs/heads/master";
  inputs.src-mongo-master.repo  = "mongo";
  inputs.src-mongo-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mongo-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mongo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
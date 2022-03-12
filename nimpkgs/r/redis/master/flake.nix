{
  description = ''official redis client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-redis-master.flake = false;
  inputs.src-redis-master.owner = "nim-lang";
  inputs.src-redis-master.ref   = "refs/heads/master";
  inputs.src-redis-master.repo  = "redis";
  inputs.src-redis-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-redis-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-redis-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
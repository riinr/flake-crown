{
  description = ''An implementation of Range Queries in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rangequeries-master.flake = false;
  inputs.src-rangequeries-master.ref   = "refs/heads/master";
  inputs.src-rangequeries-master.owner = "vanyle";
  inputs.src-rangequeries-master.repo  = "RangeQueriesNim";
  inputs.src-rangequeries-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rangequeries-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rangequeries-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
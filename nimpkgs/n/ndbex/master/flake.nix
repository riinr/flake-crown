{
  description = ''small extension for Nim's database modules (db_*)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ndbex-master.flake = false;
  inputs.src-ndbex-master.ref   = "refs/heads/master";
  inputs.src-ndbex-master.owner = "Senketsu";
  inputs.src-ndbex-master.repo  = "nim-db-ex";
  inputs.src-ndbex-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ndbex-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ndbex-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
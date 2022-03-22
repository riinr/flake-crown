{
  description = ''prestodb connector'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-db_presto-1_0_11.flake = false;
  inputs.src-db_presto-1_0_11.ref   = "refs/tags/1.0.11";
  inputs.src-db_presto-1_0_11.owner = "Bennyelg";
  inputs.src-db_presto-1_0_11.repo  = "nimPresto";
  inputs.src-db_presto-1_0_11.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-db_presto-1_0_11"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-db_presto-1_0_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
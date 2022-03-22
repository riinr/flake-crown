{
  description = ''Simpleflake for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simpleflake-master.flake = false;
  inputs.src-simpleflake-master.ref   = "refs/heads/master";
  inputs.src-simpleflake-master.owner = "aisk";
  inputs.src-simpleflake-master.repo  = "simpleflake.nim";
  inputs.src-simpleflake-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simpleflake-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simpleflake-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
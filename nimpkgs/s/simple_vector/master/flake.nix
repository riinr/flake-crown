{
  description = ''Simple vector library for nim-lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-simple_vector-master.flake = false;
  inputs.src-simple_vector-master.ref   = "refs/heads/master";
  inputs.src-simple_vector-master.owner = "Ephiiz";
  inputs.src-simple_vector-master.repo  = "simple_vector";
  inputs.src-simple_vector-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-simple_vector-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-simple_vector-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
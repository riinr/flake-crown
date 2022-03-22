{
  description = ''OrientDB driver written in pure Nim, uses the OrientDB 2.0 Binary Protocol with Binary Serialization.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-orient-master.flake = false;
  inputs.src-orient-master.ref   = "refs/heads/master";
  inputs.src-orient-master.owner = "philip-wernersbach";
  inputs.src-orient-master.repo  = "nim-orient";
  inputs.src-orient-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-orient-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-orient-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
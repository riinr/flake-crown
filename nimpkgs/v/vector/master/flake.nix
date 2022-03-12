{
  description = ''Simple reallocating vector'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-vector-master.flake = false;
  inputs.src-vector-master.owner = "tontinton";
  inputs.src-vector-master.ref   = "refs/heads/master";
  inputs.src-vector-master.repo  = "vector";
  inputs.src-vector-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-vector-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-vector-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
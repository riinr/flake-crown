{
  description = ''Root finding functions for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-roots-master.flake = false;
  inputs.src-roots-master.owner = "BarrOff";
  inputs.src-roots-master.ref   = "refs/heads/master";
  inputs.src-roots-master.repo  = "roots";
  inputs.src-roots-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-roots-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-roots-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
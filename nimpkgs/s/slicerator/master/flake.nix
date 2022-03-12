{
  description = ''Iterator package aimed at more ergonomic and efficient iterators.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-slicerator-master.flake = false;
  inputs.src-slicerator-master.owner = "beef331";
  inputs.src-slicerator-master.ref   = "refs/heads/master";
  inputs.src-slicerator-master.repo  = "slicerator";
  inputs.src-slicerator-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-slicerator-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-slicerator-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
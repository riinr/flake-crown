{
  description = ''A new server library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nio-master.flake = false;
  inputs.src-nio-master.ref   = "refs/heads/master";
  inputs.src-nio-master.owner = "KayraG";
  inputs.src-nio-master.repo  = "nio";
  inputs.src-nio-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nio-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nio-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
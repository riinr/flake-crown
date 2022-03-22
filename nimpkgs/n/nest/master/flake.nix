{
  description = ''RESTful URI router'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nest-master.flake = false;
  inputs.src-nest-master.ref   = "refs/heads/master";
  inputs.src-nest-master.owner = "kedean";
  inputs.src-nest-master.repo  = "nest";
  inputs.src-nest-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nest-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nest-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
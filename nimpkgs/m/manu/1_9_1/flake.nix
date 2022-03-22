{
  description = ''Nim Matrix library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-manu-1_9_1.flake = false;
  inputs.src-manu-1_9_1.ref   = "refs/tags/1.9.1";
  inputs.src-manu-1_9_1.owner = "planetis-m";
  inputs.src-manu-1_9_1.repo  = "manu";
  inputs.src-manu-1_9_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-manu-1_9_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-manu-1_9_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
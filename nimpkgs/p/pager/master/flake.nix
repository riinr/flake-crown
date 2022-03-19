{
  description = ''A simple library for paging, similar to less'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pager-master.flake = false;
  inputs.src-pager-master.owner = "~reesmichael1";
  inputs.src-pager-master.ref   = "master";
  inputs.src-pager-master.repo  = "nim-pager";
  inputs.src-pager-master.type  = "sourcehut";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pager-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pager-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
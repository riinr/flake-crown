{
  description = ''A curses inspired simple cross-platform console library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-illwill-master.flake = false;
  inputs.src-illwill-master.owner = "johnnovak";
  inputs.src-illwill-master.ref   = "refs/heads/master";
  inputs.src-illwill-master.repo  = "illwill";
  inputs.src-illwill-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-illwill-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-illwill-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
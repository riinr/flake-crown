{
  description = ''User Agent parser for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-useragents-master.flake = false;
  inputs.src-useragents-master.owner = "treeform";
  inputs.src-useragents-master.ref   = "refs/heads/master";
  inputs.src-useragents-master.repo  = "useragents";
  inputs.src-useragents-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-useragents-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-useragents-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
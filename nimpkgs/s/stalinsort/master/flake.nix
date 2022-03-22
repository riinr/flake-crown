{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stalinsort-master.flake = false;
  inputs.src-stalinsort-master.ref   = "refs/heads/master";
  inputs.src-stalinsort-master.owner = "tonogram";
  inputs.src-stalinsort-master.repo  = "stalinsort";
  inputs.src-stalinsort-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stalinsort-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stalinsort-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
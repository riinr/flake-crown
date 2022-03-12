{
  description = ''Utilities for and extensions to Slice/HSlice'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sliceutils-master.flake = false;
  inputs.src-sliceutils-master.owner = "metagn";
  inputs.src-sliceutils-master.ref   = "refs/heads/master";
  inputs.src-sliceutils-master.repo  = "sliceutils";
  inputs.src-sliceutils-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sliceutils-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sliceutils-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
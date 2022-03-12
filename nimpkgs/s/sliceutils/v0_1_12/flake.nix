{
  description = ''Utilities for and extensions to Slice/HSlice'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sliceutils-v0_1_12.flake = false;
  inputs.src-sliceutils-v0_1_12.owner = "metagn";
  inputs.src-sliceutils-v0_1_12.ref   = "refs/tags/v0.1.12";
  inputs.src-sliceutils-v0_1_12.repo  = "sliceutils";
  inputs.src-sliceutils-v0_1_12.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sliceutils-v0_1_12"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sliceutils-v0_1_12";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
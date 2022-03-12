{
  description = ''Nim bindings for Open color'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-opencolor-v1_9_1_1.flake = false;
  inputs.src-opencolor-v1_9_1_1.owner = "Double-oxygeN";
  inputs.src-opencolor-v1_9_1_1.ref   = "refs/tags/v1.9.1.1";
  inputs.src-opencolor-v1_9_1_1.repo  = "opencolor.nim";
  inputs.src-opencolor-v1_9_1_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-opencolor-v1_9_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-opencolor-v1_9_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
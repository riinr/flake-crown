{
  description = ''2d collision library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bumpy-1_0_3.flake = false;
  inputs.src-bumpy-1_0_3.owner = "treeform";
  inputs.src-bumpy-1_0_3.ref   = "1_0_3";
  inputs.src-bumpy-1_0_3.repo  = "bumpy";
  inputs.src-bumpy-1_0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bumpy-1_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bumpy-1_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
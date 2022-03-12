{
  description = ''A Nim implementation of the Stalin Sort algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stalinsort-v0_2_1.flake = false;
  inputs.src-stalinsort-v0_2_1.owner = "tonogram";
  inputs.src-stalinsort-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-stalinsort-v0_2_1.repo  = "stalinsort";
  inputs.src-stalinsort-v0_2_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stalinsort-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stalinsort-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''a tiny tool to bump nimble versions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bump-1_0_2.flake = false;
  inputs.src-bump-1_0_2.owner = "disruptek";
  inputs.src-bump-1_0_2.ref   = "1_0_2";
  inputs.src-bump-1_0_2.repo  = "bump";
  inputs.src-bump-1_0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bump-1_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bump-1_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
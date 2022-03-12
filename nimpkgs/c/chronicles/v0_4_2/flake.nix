{
  description = ''A crafty implementation of structured logging for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chronicles-v0_4_2.flake = false;
  inputs.src-chronicles-v0_4_2.owner = "status-im";
  inputs.src-chronicles-v0_4_2.ref   = "refs/tags/v0.4.2";
  inputs.src-chronicles-v0_4_2.repo  = "nim-chronicles";
  inputs.src-chronicles-v0_4_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chronicles-v0_4_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chronicles-v0_4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''A small command line parsing DSL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-commandant-0_15_0.flake = false;
  inputs.src-commandant-0_15_0.ref   = "refs/tags/0.15.0";
  inputs.src-commandant-0_15_0.owner = "casey-SK";
  inputs.src-commandant-0_15_0.repo  = "commandant";
  inputs.src-commandant-0_15_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-commandant-0_15_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-commandant-0_15_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
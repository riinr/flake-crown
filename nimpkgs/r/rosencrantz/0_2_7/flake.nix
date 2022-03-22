{
  description = ''Web server DSL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rosencrantz-0_2_7.flake = false;
  inputs.src-rosencrantz-0_2_7.ref   = "refs/tags/0.2.7";
  inputs.src-rosencrantz-0_2_7.owner = "andreaferretti";
  inputs.src-rosencrantz-0_2_7.repo  = "rosencrantz";
  inputs.src-rosencrantz-0_2_7.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rosencrantz-0_2_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rosencrantz-0_2_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
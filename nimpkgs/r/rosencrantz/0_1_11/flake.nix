{
  description = ''Web server DSL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rosencrantz-0_1_11.flake = false;
  inputs.src-rosencrantz-0_1_11.ref   = "refs/tags/0.1.11";
  inputs.src-rosencrantz-0_1_11.owner = "andreaferretti";
  inputs.src-rosencrantz-0_1_11.repo  = "rosencrantz";
  inputs.src-rosencrantz-0_1_11.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rosencrantz-0_1_11"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-rosencrantz-0_1_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
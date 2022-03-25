{
  description = ''Web server DSL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rosencrantz-0_2_8.flake = false;
  inputs.src-rosencrantz-0_2_8.ref   = "refs/tags/0.2.8";
  inputs.src-rosencrantz-0_2_8.owner = "andreaferretti";
  inputs.src-rosencrantz-0_2_8.repo  = "rosencrantz";
  inputs.src-rosencrantz-0_2_8.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rosencrantz-0_2_8"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-rosencrantz-0_2_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
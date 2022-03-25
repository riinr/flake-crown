{
  description = ''Statistical tests in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-statistical_tests-master.flake = false;
  inputs.src-statistical_tests-master.ref   = "refs/heads/master";
  inputs.src-statistical_tests-master.owner = "ayman-albaz";
  inputs.src-statistical_tests-master.repo  = "statistical-tests";
  inputs.src-statistical_tests-master.type  = "github";
  
  inputs."distributions".owner = "nim-nix-pkgs";
  inputs."distributions".ref   = "master";
  inputs."distributions".repo  = "distributions";
  inputs."distributions".dir   = "v0_1_1";
  inputs."distributions".type  = "github";
  inputs."distributions".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distributions".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-statistical_tests-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-statistical_tests-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
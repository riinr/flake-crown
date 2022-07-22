{
  description = ''Statistical tests in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-statistical_tests-v0_2_0.flake = false;
  inputs.src-statistical_tests-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-statistical_tests-v0_2_0.owner = "ayman-albaz";
  inputs.src-statistical_tests-v0_2_0.repo  = "statistical-tests";
  inputs.src-statistical_tests-v0_2_0.type  = "github";
  
  inputs."distributions".owner = "nim-nix-pkgs";
  inputs."distributions".ref   = "master";
  inputs."distributions".repo  = "distributions";
  inputs."distributions".dir   = "v0_2_0";
  inputs."distributions".type  = "github";
  inputs."distributions".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distributions".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-statistical_tests-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-statistical_tests-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
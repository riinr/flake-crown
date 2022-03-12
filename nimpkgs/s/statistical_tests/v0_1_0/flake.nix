{
  description = ''Statistical tests in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-statistical_tests-v0_1_0.flake = false;
  inputs.src-statistical_tests-v0_1_0.owner = "ayman-albaz";
  inputs.src-statistical_tests-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-statistical_tests-v0_1_0.repo  = "statistical-tests";
  inputs.src-statistical_tests-v0_1_0.type  = "github";
  
  inputs."distributions".dir   = "nimpkgs/d/distributions";
  inputs."distributions".owner = "riinr";
  inputs."distributions".ref   = "flake-pinning";
  inputs."distributions".repo  = "flake-nimble";
  inputs."distributions".type  = "github";
  inputs."distributions".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distributions".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-statistical_tests-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-statistical_tests-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
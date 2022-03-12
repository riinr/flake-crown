{
  description = ''Statistical tests in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-statistical_tests-master.flake = false;
  inputs.src-statistical_tests-master.owner = "ayman-albaz";
  inputs.src-statistical_tests-master.ref   = "refs/heads/master";
  inputs.src-statistical_tests-master.repo  = "statistical-tests";
  inputs.src-statistical_tests-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-statistical_tests-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-statistical_tests-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
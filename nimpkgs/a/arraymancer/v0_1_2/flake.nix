{
  description = ''A tensor (multidimensional array) library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arraymancer-v0_1_2.flake = false;
  inputs.src-arraymancer-v0_1_2.owner = "mratsim";
  inputs.src-arraymancer-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-arraymancer-v0_1_2.repo  = "Arraymancer";
  inputs.src-arraymancer-v0_1_2.type  = "github";
  
  inputs."nimblas".dir   = "nimpkgs/n/nimblas";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".ref   = "flake-pinning";
  inputs."nimblas".repo  = "flake-nimble";
  inputs."nimblas".type  = "github";
  inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arraymancer-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-arraymancer-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
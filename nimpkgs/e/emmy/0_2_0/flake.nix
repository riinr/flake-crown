{
  description = ''Algebraic structures and related operations for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-emmy-0_2_0.flake = false;
  inputs.src-emmy-0_2_0.owner = "andreaferretti";
  inputs.src-emmy-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-emmy-0_2_0.repo  = "emmy";
  inputs.src-emmy-0_2_0.type  = "github";
  
  inputs."neo".dir   = "nimpkgs/n/neo";
  inputs."neo".owner = "riinr";
  inputs."neo".ref   = "flake-pinning";
  inputs."neo".repo  = "flake-nimble";
  inputs."neo".type  = "github";
  inputs."neo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bigints".dir   = "nimpkgs/b/bigints";
  inputs."bigints".owner = "riinr";
  inputs."bigints".ref   = "flake-pinning";
  inputs."bigints".repo  = "flake-nimble";
  inputs."bigints".type  = "github";
  inputs."bigints".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stint".dir   = "nimpkgs/s/stint";
  inputs."stint".owner = "riinr";
  inputs."stint".ref   = "flake-pinning";
  inputs."stint".repo  = "flake-nimble";
  inputs."stint".type  = "github";
  inputs."stint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-emmy-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-emmy-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''A crafty implementation of structured logging for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chronicles-v0_7_2.flake = false;
  inputs.src-chronicles-v0_7_2.owner = "status-im";
  inputs.src-chronicles-v0_7_2.ref   = "refs/tags/v0.7.2";
  inputs.src-chronicles-v0_7_2.repo  = "nim-chronicles";
  inputs.src-chronicles-v0_7_2.type  = "github";
  
  inputs."json_serialization".dir   = "nimpkgs/j/json_serialization";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".ref   = "flake-pinning";
  inputs."json_serialization".repo  = "flake-nimble";
  inputs."json_serialization".type  = "github";
  inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."testutils".dir   = "nimpkgs/t/testutils";
  inputs."testutils".owner = "riinr";
  inputs."testutils".ref   = "flake-pinning";
  inputs."testutils".repo  = "flake-nimble";
  inputs."testutils".type  = "github";
  inputs."testutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chronicles-v0_7_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chronicles-v0_7_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
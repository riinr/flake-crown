{
  description = ''A crafty implementation of structured logging for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-chronicles-master.flake = false;
  inputs.src-chronicles-master.owner = "status-im";
  inputs.src-chronicles-master.ref   = "refs/heads/master";
  inputs.src-chronicles-master.repo  = "nim-chronicles";
  inputs.src-chronicles-master.type  = "github";
  
  inputs."testutils".dir   = "nimpkgs/t/testutils";
  inputs."testutils".owner = "riinr";
  inputs."testutils".ref   = "flake-pinning";
  inputs."testutils".repo  = "flake-nimble";
  inputs."testutils".type  = "github";
  inputs."testutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."testutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."json_serialization".dir   = "nimpkgs/j/json_serialization";
  inputs."json_serialization".owner = "riinr";
  inputs."json_serialization".ref   = "flake-pinning";
  inputs."json_serialization".repo  = "flake-nimble";
  inputs."json_serialization".type  = "github";
  inputs."json_serialization".inputs.nixpkgs.follows = "nixpkgs";
  inputs."json_serialization".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-chronicles-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-chronicles-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
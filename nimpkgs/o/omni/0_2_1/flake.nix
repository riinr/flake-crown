{
  description = ''omni is a DSL for low-level audio programming.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-omni-0_2_1.flake = false;
  inputs.src-omni-0_2_1.owner = "vitreo12";
  inputs.src-omni-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-omni-0_2_1.repo  = "omni";
  inputs.src-omni-0_2_1.type  = "github";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-omni-0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-omni-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
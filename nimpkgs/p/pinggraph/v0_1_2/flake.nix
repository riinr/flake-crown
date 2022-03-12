{
  description = ''Simple terminal ping graph'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pinggraph-v0_1_2.flake = false;
  inputs.src-pinggraph-v0_1_2.owner = "SolitudeSF";
  inputs.src-pinggraph-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-pinggraph-v0_1_2.repo  = "pinggraph";
  inputs.src-pinggraph-v0_1_2.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pinggraph-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pinggraph-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
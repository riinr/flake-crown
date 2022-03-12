{
  description = ''Tools for working with re-frame ClojureScript projects'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-reframe-0_2_0.flake = false;
  inputs.src-reframe-0_2_0.owner = "rosado";
  inputs.src-reframe-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-reframe-0_2_0.repo  = "reframe.nim";
  inputs.src-reframe-0_2_0.type  = "github";
  
  inputs."edn".dir   = "nimpkgs/e/edn";
  inputs."edn".owner = "riinr";
  inputs."edn".ref   = "flake-pinning";
  inputs."edn".repo  = "flake-nimble";
  inputs."edn".type  = "github";
  inputs."edn".inputs.nixpkgs.follows = "nixpkgs";
  inputs."edn".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-reframe-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-reframe-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
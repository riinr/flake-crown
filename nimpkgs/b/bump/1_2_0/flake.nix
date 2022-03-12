{
  description = ''a tiny tool to bump nimble versions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bump-1_2_0.flake = false;
  inputs.src-bump-1_2_0.owner = "disruptek";
  inputs.src-bump-1_2_0.ref   = "refs/tags/1.2.0";
  inputs.src-bump-1_2_0.repo  = "bump";
  inputs.src-bump-1_2_0.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bump-1_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bump-1_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
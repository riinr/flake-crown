{
  description = ''2d collision library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bumpy-0_2_1.flake = false;
  inputs.src-bumpy-0_2_1.owner = "treeform";
  inputs.src-bumpy-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-bumpy-0_2_1.repo  = "bumpy";
  inputs.src-bumpy-0_2_1.type  = "github";
  
  inputs."vmath".dir   = "nimpkgs/v/vmath";
  inputs."vmath".owner = "riinr";
  inputs."vmath".ref   = "flake-pinning";
  inputs."vmath".repo  = "flake-nimble";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bumpy-0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bumpy-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
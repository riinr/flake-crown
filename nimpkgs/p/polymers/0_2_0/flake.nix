{
  description = ''A library of components and systems for use with the Polymorph ECS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Polymers-0_2_0.flake = false;
  inputs.src-Polymers-0_2_0.owner = "rlipsc";
  inputs.src-Polymers-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-Polymers-0_2_0.repo  = "polymers";
  inputs.src-Polymers-0_2_0.type  = "github";
  
  inputs."polymorph".dir   = "nimpkgs/p/polymorph";
  inputs."polymorph".owner = "riinr";
  inputs."polymorph".ref   = "flake-pinning";
  inputs."polymorph".repo  = "flake-nimble";
  inputs."polymorph".type  = "github";
  inputs."polymorph".inputs.nixpkgs.follows = "nixpkgs";
  inputs."polymorph".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-polymers-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-polymers-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
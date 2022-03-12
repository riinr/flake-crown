{
  description = ''Drag and drop source / target'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dnd-v0_6_1.flake = false;
  inputs.src-dnd-v0_6_1.owner = "adokitkat";
  inputs.src-dnd-v0_6_1.ref   = "refs/tags/v0.6.1";
  inputs.src-dnd-v0_6_1.repo  = "dnd";
  inputs.src-dnd-v0_6_1.type  = "github";
  
  inputs."gintro".dir   = "nimpkgs/g/gintro";
  inputs."gintro".owner = "riinr";
  inputs."gintro".ref   = "flake-pinning";
  inputs."gintro".repo  = "flake-nimble";
  inputs."gintro".type  = "github";
  inputs."gintro".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gintro".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dnd-v0_6_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dnd-v0_6_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
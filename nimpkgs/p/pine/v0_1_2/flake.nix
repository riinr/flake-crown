{
  description = ''Nim Static Blog & Site Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pine-v0_1_2.flake = false;
  inputs.src-pine-v0_1_2.owner = "Willyboar";
  inputs.src-pine-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-pine-v0_1_2.repo  = "pine";
  inputs.src-pine-v0_1_2.type  = "github";
  
  inputs."markdown".dir   = "nimpkgs/m/markdown";
  inputs."markdown".owner = "riinr";
  inputs."markdown".ref   = "flake-pinning";
  inputs."markdown".repo  = "flake-nimble";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow".dir   = "nimpkgs/r/rainbow";
  inputs."rainbow".owner = "riinr";
  inputs."rainbow".ref   = "flake-pinning";
  inputs."rainbow".repo  = "flake-nimble";
  inputs."rainbow".type  = "github";
  inputs."rainbow".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pine-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pine-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
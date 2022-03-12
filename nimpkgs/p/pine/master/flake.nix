{
  description = ''Nim Static Blog & Site Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pine-master.flake = false;
  inputs.src-pine-master.owner = "Willyboar";
  inputs.src-pine-master.ref   = "refs/heads/master";
  inputs.src-pine-master.repo  = "pine";
  inputs.src-pine-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pine-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pine-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
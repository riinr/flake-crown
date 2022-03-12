{
  description = ''A blog post generator for people with priorities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jeknil-v0_1_1.flake = false;
  inputs.src-jeknil-v0_1_1.owner = "tonogram";
  inputs.src-jeknil-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-jeknil-v0_1_1.repo  = "jeknil";
  inputs.src-jeknil-v0_1_1.type  = "github";
  
  inputs."markdown".dir   = "nimpkgs/m/markdown";
  inputs."markdown".owner = "riinr";
  inputs."markdown".ref   = "flake-pinning";
  inputs."markdown".repo  = "flake-nimble";
  inputs."markdown".type  = "github";
  inputs."markdown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."markdown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jeknil-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jeknil-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
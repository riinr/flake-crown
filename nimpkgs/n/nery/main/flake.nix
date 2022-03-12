{
  description = ''A simple library to create queries in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nery-main.flake = false;
  inputs.src-nery-main.owner = "David-Kunz";
  inputs.src-nery-main.ref   = "refs/heads/main";
  inputs.src-nery-main.repo  = "Nery";
  inputs.src-nery-main.type  = "github";
  
  inputs."fusion".dir   = "nimpkgs/f/fusion";
  inputs."fusion".owner = "riinr";
  inputs."fusion".ref   = "flake-pinning";
  inputs."fusion".repo  = "flake-nimble";
  inputs."fusion".type  = "github";
  inputs."fusion".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fusion".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nery-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nery-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Karax is a framework for developing single page applications in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-karax-master.flake = false;
  inputs.src-karax-master.owner = "karaxnim";
  inputs.src-karax-master.ref   = "refs/heads/master";
  inputs.src-karax-master.repo  = "karax";
  inputs.src-karax-master.type  = "github";
  
  inputs."ws".dir   = "nimpkgs/w/ws";
  inputs."ws".owner = "riinr";
  inputs."ws".ref   = "flake-pinning";
  inputs."ws".repo  = "flake-nimble";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv".dir   = "nimpkgs/d/dotenv";
  inputs."dotenv".owner = "riinr";
  inputs."dotenv".ref   = "flake-pinning";
  inputs."dotenv".repo  = "flake-nimble";
  inputs."dotenv".type  = "github";
  inputs."dotenv".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-karax-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-karax-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
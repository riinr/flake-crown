{
  description = ''Migration manager for Norm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norman-2_1_0.flake = false;
  inputs.src-norman-2_1_0.owner = "moigagoo";
  inputs.src-norman-2_1_0.ref   = "refs/tags/2.1.0";
  inputs.src-norman-2_1_0.repo  = "norman";
  inputs.src-norman-2_1_0.type  = "github";
  
  inputs."norm".dir   = "nimpkgs/n/norm";
  inputs."norm".owner = "riinr";
  inputs."norm".ref   = "flake-pinning";
  inputs."norm".repo  = "flake-nimble";
  inputs."norm".type  = "github";
  inputs."norm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norman-2_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-norman-2_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
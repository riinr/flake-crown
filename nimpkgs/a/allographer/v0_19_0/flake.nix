{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-allographer-v0_19_0.flake = false;
  inputs.src-allographer-v0_19_0.owner = "itsumura-h";
  inputs.src-allographer-v0_19_0.ref   = "refs/tags/v0.19.0";
  inputs.src-allographer-v0_19_0.repo  = "nim-allographer";
  inputs.src-allographer-v0_19_0.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-allographer-v0_19_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-allographer-v0_19_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
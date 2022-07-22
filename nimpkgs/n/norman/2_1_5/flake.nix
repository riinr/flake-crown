{
  description = ''Scaffolder and migration manager for Norm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-norman-2_1_5.flake = false;
  inputs.src-norman-2_1_5.ref   = "refs/tags/2.1.5";
  inputs.src-norman-2_1_5.owner = "moigagoo";
  inputs.src-norman-2_1_5.repo  = "norman";
  inputs.src-norman-2_1_5.type  = "github";
  
  inputs."norm".owner = "nim-nix-pkgs";
  inputs."norm".ref   = "master";
  inputs."norm".repo  = "norm";
  inputs."norm".dir   = "2_5_1";
  inputs."norm".type  = "github";
  inputs."norm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_25";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv".owner = "nim-nix-pkgs";
  inputs."dotenv".ref   = "master";
  inputs."dotenv".repo  = "dotenv";
  inputs."dotenv".dir   = "2_0_1";
  inputs."dotenv".type  = "github";
  inputs."dotenv".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-norman-2_1_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-norman-2_1_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
{
  description = ''A collection of useful algorithms and data structures for bioinformatics'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bionim-0_0_4.flake = false;
  inputs.src-bionim-0_0_4.ref   = "refs/tags/0.0.4";
  inputs.src-bionim-0_0_4.owner = "Unaimend";
  inputs.src-bionim-0_0_4.repo  = "bionim";
  inputs.src-bionim-0_0_4.type  = "github";
  
  inputs."phylogeni".owner = "nim-nix-pkgs";
  inputs."phylogeni".ref   = "master";
  inputs."phylogeni".repo  = "phylogeni";
  inputs."phylogeni".dir   = "v0_1_0";
  inputs."phylogeni".type  = "github";
  inputs."phylogeni".inputs.nixpkgs.follows = "nixpkgs";
  inputs."phylogeni".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bio_seq".owner = "nim-nix-pkgs";
  inputs."bio_seq".ref   = "master";
  inputs."bio_seq".repo  = "bio_seq";
  inputs."bio_seq".dir   = "v0_2_2";
  inputs."bio_seq".type  = "github";
  inputs."bio_seq".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bio_seq".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bionim-0_0_4"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-bionim-0_0_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
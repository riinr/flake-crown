{
  description = ''higher-level libgit2 bindings that build upon nimgit2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gittyup-2_5_5.flake = false;
  inputs.src-gittyup-2_5_5.ref   = "refs/tags/2.5.5";
  inputs.src-gittyup-2_5_5.owner = "disruptek";
  inputs.src-gittyup-2_5_5.repo  = "gittyup";
  inputs.src-gittyup-2_5_5.type  = "github";
  
  inputs."nimgit2".owner = "nim-nix-pkgs";
  inputs."nimgit2".ref   = "master";
  inputs."nimgit2".repo  = "nimgit2";
  inputs."nimgit2".dir   = "v0_3_4";
  inputs."nimgit2".type  = "github";
  inputs."nimgit2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-disruptek-badresults".owner = "nim-nix-pkgs";
  inputs."github-disruptek-badresults".ref   = "master";
  inputs."github-disruptek-badresults".repo  = "github-disruptek-badresults";
  inputs."github-disruptek-badresults".dir   = "1_0_1";
  inputs."github-disruptek-badresults".type  = "github";
  inputs."github-disruptek-badresults".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-disruptek-badresults".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop".owner = "nim-nix-pkgs";
  inputs."nimterop".ref   = "master";
  inputs."nimterop".repo  = "nimterop";
  inputs."nimterop".dir   = "v0_6_11";
  inputs."nimterop".type  = "github";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".dir   = "v0_19_0";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gittyup-2_5_5"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gittyup-2_5_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
{
  description = ''higher-level git bindings that build upon nimgit2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gittyup-2_1_12.flake = false;
  inputs.src-gittyup-2_1_12.ref   = "refs/tags/2.1.12";
  inputs.src-gittyup-2_1_12.owner = "disruptek";
  inputs.src-gittyup-2_1_12.repo  = "gittyup";
  inputs.src-gittyup-2_1_12.type  = "github";
  
  inputs."nimgit2".owner = "nim-nix-pkgs";
  inputs."nimgit2".ref   = "master";
  inputs."nimgit2".repo  = "nimgit2";
  inputs."nimgit2".dir   = "v0_1_1";
  inputs."nimgit2".type  = "github";
  inputs."nimgit2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/disruptek/results".owner = "nim-nix-pkgs";
  inputs."github.com/disruptek/results".ref   = "master";
  inputs."github.com/disruptek/results".repo  = "github.com/disruptek/results";
  inputs."github.com/disruptek/results".dir   = "";
  inputs."github.com/disruptek/results".type  = "github";
  inputs."github.com/disruptek/results".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/disruptek/results".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gittyup-2_1_12"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gittyup-2_1_12";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
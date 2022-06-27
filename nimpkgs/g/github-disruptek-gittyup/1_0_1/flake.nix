{
  description = ''higher-level git bindings that build upon nimgit2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gittyup-1_0_1.flake = false;
  inputs.src-gittyup-1_0_1.ref   = "refs/tags/1.0.1";
  inputs.src-gittyup-1_0_1.owner = "disruptek";
  inputs.src-gittyup-1_0_1.repo  = "gittyup";
  inputs.src-gittyup-1_0_1.type  = "github";
  
  inputs."nimgit2".owner = "nim-nix-pkgs";
  inputs."nimgit2".ref   = "master";
  inputs."nimgit2".repo  = "nimgit2";
  inputs."nimgit2".dir   = "v0_1_1";
  inputs."nimgit2".type  = "github";
  inputs."nimgit2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgit2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github.com/disruptek/nim-result".owner = "nim-nix-pkgs";
  inputs."github.com/disruptek/nim-result".ref   = "master";
  inputs."github.com/disruptek/nim-result".repo  = "github.com/disruptek/nim-result";
  inputs."github.com/disruptek/nim-result".dir   = "";
  inputs."github.com/disruptek/nim-result".type  = "github";
  inputs."github.com/disruptek/nim-result".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/disruptek/nim-result".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gittyup-1_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gittyup-1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
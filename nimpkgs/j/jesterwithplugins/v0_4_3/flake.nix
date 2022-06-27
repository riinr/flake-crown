{
  description = ''A sinatra-like web framework for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jester-v0_4_3.flake = false;
  inputs.src-jester-v0_4_3.ref   = "refs/tags/v0.4.3";
  inputs.src-jester-v0_4_3.owner = "JohnAD";
  inputs.src-jester-v0_4_3.repo  = "jesterwithplugins";
  inputs.src-jester-v0_4_3.type  = "github";
  
  inputs."httpbeast".owner = "nim-nix-pkgs";
  inputs."httpbeast".ref   = "master";
  inputs."httpbeast".repo  = "httpbeast";
  inputs."httpbeast".dir   = "v0_4_1";
  inputs."httpbeast".type  = "github";
  inputs."httpbeast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpbeast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-timotheecour-asynctools".owner = "nim-nix-pkgs";
  inputs."github-timotheecour-asynctools".ref   = "master";
  inputs."github-timotheecour-asynctools".repo  = "github-timotheecour-asynctools";
  inputs."github-timotheecour-asynctools".dir   = "master";
  inputs."github-timotheecour-asynctools".type  = "github";
  inputs."github-timotheecour-asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-timotheecour-asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jester-v0_4_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-jester-v0_4_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
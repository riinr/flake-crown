{
  description = ''An amateur radio tool to get you a ballpark estimate of where a given Maidenhead grid square is.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ballpark-main.flake = false;
  inputs.src-ballpark-main.ref   = "refs/heads/main";
  inputs.src-ballpark-main.owner = "Mihara";
  inputs.src-ballpark-main.repo  = "ballpark";
  inputs.src-ballpark-main.type  = "github";
  
  inputs."fsnotify".owner = "nim-nix-pkgs";
  inputs."fsnotify".ref   = "master";
  inputs."fsnotify".repo  = "fsnotify";
  inputs."fsnotify".dir   = "master";
  inputs."fsnotify".type  = "github";
  inputs."fsnotify".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fsnotify".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ballpark-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ballpark-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
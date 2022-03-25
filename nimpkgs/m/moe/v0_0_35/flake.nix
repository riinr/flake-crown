{
  description = ''a command lined based text editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moe-v0_0_35.flake = false;
  inputs.src-moe-v0_0_35.ref   = "refs/tags/v0.0.35";
  inputs.src-moe-v0_0_35.owner = "fox0430";
  inputs.src-moe-v0_0_35.repo  = "moe";
  inputs.src-moe-v0_0_35.type  = "github";
  
  inputs."ncurses".owner = "nim-nix-pkgs";
  inputs."ncurses".ref   = "master";
  inputs."ncurses".repo  = "ncurses";
  inputs."ncurses".dir   = "master";
  inputs."ncurses".type  = "github";
  inputs."ncurses".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ncurses".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unicodedb".owner = "nim-nix-pkgs";
  inputs."unicodedb".ref   = "master";
  inputs."unicodedb".repo  = "unicodedb";
  inputs."unicodedb".dir   = "v0_10_0";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_0_35"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-moe-v0_0_35";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
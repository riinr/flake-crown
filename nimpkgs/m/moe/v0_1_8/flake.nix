{
  description = ''A command lined based text editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moe-v0_1_8.flake = false;
  inputs.src-moe-v0_1_8.ref   = "refs/tags/v0.1.8";
  inputs.src-moe-v0_1_8.owner = "fox0430";
  inputs.src-moe-v0_1_8.repo  = "moe";
  inputs.src-moe-v0_1_8.type  = "github";
  
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
  
  inputs."parsetoml".owner = "nim-nix-pkgs";
  inputs."parsetoml".ref   = "master";
  inputs."parsetoml".repo  = "parsetoml";
  inputs."parsetoml".dir   = "v0_6_0";
  inputs."parsetoml".type  = "github";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_1_8"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-moe-v0_1_8";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
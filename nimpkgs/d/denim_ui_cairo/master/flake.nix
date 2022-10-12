{
  description = ''Cairo backend for the denim ui engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-denim_ui_cairo-master.flake = false;
  inputs.src-denim_ui_cairo-master.ref   = "refs/heads/master";
  inputs.src-denim_ui_cairo-master.owner = "nortero-code";
  inputs.src-denim_ui_cairo-master.repo  = "midio-ui-cairo";
  inputs.src-denim_ui_cairo-master.type  = "github";
  
  inputs."denim_ui".owner = "nim-nix-pkgs";
  inputs."denim_ui".ref   = "master";
  inputs."denim_ui".repo  = "denim_ui";
  inputs."denim_ui".dir   = "master";
  inputs."denim_ui".type  = "github";
  inputs."denim_ui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."denim_ui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sdl2".owner = "nim-nix-pkgs";
  inputs."sdl2".ref   = "master";
  inputs."sdl2".repo  = "sdl2";
  inputs."sdl2".dir   = "v2_0_4";
  inputs."sdl2".type  = "github";
  inputs."sdl2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sdl2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cairo".owner = "nim-nix-pkgs";
  inputs."cairo".ref   = "master";
  inputs."cairo".repo  = "cairo";
  inputs."cairo".dir   = "1_1_1";
  inputs."cairo".type  = "github";
  inputs."cairo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-denim_ui_cairo-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-denim_ui_cairo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
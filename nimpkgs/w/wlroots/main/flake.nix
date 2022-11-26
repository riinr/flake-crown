{
  description = ''Nim bindings for wlroots'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wlroots-main.flake = false;
  inputs.src-wlroots-main.ref   = "refs/heads/main";
  inputs.src-wlroots-main.owner = "j-james";
  inputs.src-wlroots-main.repo  = "nim-wlroots";
  inputs.src-wlroots-main.type  = "github";
  
  inputs."wayland".owner = "nim-nix-pkgs";
  inputs."wayland".ref   = "master";
  inputs."wayland".repo  = "wayland";
  inputs."wayland".dir   = "main";
  inputs."wayland".type  = "github";
  inputs."wayland".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wayland".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xkb".owner = "nim-nix-pkgs";
  inputs."xkb".ref   = "master";
  inputs."xkb".repo  = "xkb";
  inputs."xkb".dir   = "main";
  inputs."xkb".type  = "github";
  inputs."xkb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xkb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wlroots-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-wlroots-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
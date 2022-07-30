{
  description = ''Desktop notifications'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notification-v0_1_0.flake = false;
  inputs.src-notification-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-notification-v0_1_0.owner = "SolitudeSF";
  inputs.src-notification-v0_1_0.repo  = "notification";
  inputs.src-notification-v0_1_0.type  = "github";
  
  inputs."github-solitudesf-nim-dbus".owner = "nim-nix-pkgs";
  inputs."github-solitudesf-nim-dbus".ref   = "master";
  inputs."github-solitudesf-nim-dbus".repo  = "github-solitudesf-nim-dbus";
  inputs."github-solitudesf-nim-dbus".dir   = "devel";
  inputs."github-solitudesf-nim-dbus".type  = "github";
  inputs."github-solitudesf-nim-dbus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-solitudesf-nim-dbus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imageman".owner = "nim-nix-pkgs";
  inputs."imageman".ref   = "master";
  inputs."imageman".repo  = "imageman";
  inputs."imageman".dir   = "v0_8_2";
  inputs."imageman".type  = "github";
  inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notification-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-notification-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
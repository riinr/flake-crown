{
  description = ''Widget library built on Fidget written in pure Nim and OpenGL rendered'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fidgetty-main.flake = false;
  inputs.src-fidgetty-main.ref   = "refs/heads/main";
  inputs.src-fidgetty-main.owner = "elcritch";
  inputs.src-fidgetty-main.repo  = "fidgets";
  inputs.src-fidgetty-main.type  = "github";
  
  inputs."github.com/elcritch/fidget".owner = "nim-nix-pkgs";
  inputs."github.com/elcritch/fidget".ref   = "master";
  inputs."github.com/elcritch/fidget".repo  = "github.com/elcritch/fidget";
  inputs."github.com/elcritch/fidget".dir   = "";
  inputs."github.com/elcritch/fidget".type  = "github";
  inputs."github.com/elcritch/fidget".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/elcritch/fidget".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fidgetty-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-fidgetty-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
{
  description = ''Color Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Palette-develop.flake = false;
  inputs.src-Palette-develop.ref   = "refs/heads/develop";
  inputs.src-Palette-develop.owner = "momeemt";
  inputs.src-Palette-develop.repo  = "Palette";
  inputs.src-Palette-develop.type  = "github";
  
  inputs."nigui".owner = "nim-nix-pkgs";
  inputs."nigui".ref   = "master";
  inputs."nigui".repo  = "nigui";
  inputs."nigui".dir   = "v0_2_6";
  inputs."nigui".type  = "github";
  inputs."nigui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_28";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-Palette-develop"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-Palette-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
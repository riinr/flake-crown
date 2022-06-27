{
  description = ''Dead simple Nim app for making timebreaks'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-uspokoysa-main.flake = false;
  inputs.src-uspokoysa-main.ref   = "refs/heads/main";
  inputs.src-uspokoysa-main.owner = "ioplker";
  inputs.src-uspokoysa-main.repo  = "uspokoysa";
  inputs.src-uspokoysa-main.type  = "github";
  
  inputs."nigui".owner = "nim-nix-pkgs";
  inputs."nigui".ref   = "master";
  inputs."nigui".repo  = "nigui";
  inputs."nigui".dir   = "v0_2_5";
  inputs."nigui".type  = "github";
  inputs."nigui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nigui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-uspokoysa-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-uspokoysa-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
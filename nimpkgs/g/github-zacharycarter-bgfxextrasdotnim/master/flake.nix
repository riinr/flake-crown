{
  description = ''Extra wrappers for bgfx'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bgfxextrasdotnim-master.flake = false;
  inputs.src-bgfxextrasdotnim-master.ref   = "refs/heads/master";
  inputs.src-bgfxextrasdotnim-master.owner = "zacharycarter";
  inputs.src-bgfxextrasdotnim-master.repo  = "bgfx.extras.nim";
  inputs.src-bgfxextrasdotnim-master.type  = "github";
  
  inputs."github-zacharycarter-freetype".owner = "nim-nix-pkgs";
  inputs."github-zacharycarter-freetype".ref   = "master";
  inputs."github-zacharycarter-freetype".repo  = "github-zacharycarter-freetype";
  inputs."github-zacharycarter-freetype".dir   = "master";
  inputs."github-zacharycarter-freetype".type  = "github";
  inputs."github-zacharycarter-freetype".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-zacharycarter-freetype".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bgfxdotnim".owner = "nim-nix-pkgs";
  inputs."bgfxdotnim".ref   = "master";
  inputs."bgfxdotnim".repo  = "bgfxdotnim";
  inputs."bgfxdotnim".dir   = "master";
  inputs."bgfxdotnim".type  = "github";
  inputs."bgfxdotnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bgfxdotnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bgfxextrasdotnim-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-bgfxextrasdotnim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
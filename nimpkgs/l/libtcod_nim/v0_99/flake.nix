{
  description = ''Wrapper of the libtcod library for the Nim language.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libtcod_nim-v0_99.flake = false;
  inputs.src-libtcod_nim-v0_99.ref   = "refs/tags/v0.99";
  inputs.src-libtcod_nim-v0_99.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_99.repo  = "libtcod_nim";
  inputs.src-libtcod_nim-v0_99.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libtcod_nim-v0_99"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-libtcod_nim-v0_99";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
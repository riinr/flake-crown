{
  description = ''A Nim wrapper for the Spotify Web API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spotify-v0_1_1.flake = false;
  inputs.src-spotify-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-spotify-v0_1_1.owner = "CORDEA";
  inputs.src-spotify-v0_1_1.repo  = "spotify";
  inputs.src-spotify-v0_1_1.type  = "github";
  
  inputs."oauth".owner = "nim-nix-pkgs";
  inputs."oauth".ref   = "master";
  inputs."oauth".repo  = "oauth";
  inputs."oauth".dir   = "v0_10";
  inputs."oauth".type  = "github";
  inputs."oauth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spotify-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-spotify-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
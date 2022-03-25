{
  description = ''A Nim wrapper for the Spotify Web API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-spotify-master.flake = false;
  inputs.src-spotify-master.ref   = "refs/heads/master";
  inputs.src-spotify-master.owner = "CORDEA";
  inputs.src-spotify-master.repo  = "spotify";
  inputs.src-spotify-master.type  = "github";
  
  inputs."oauth".owner = "nim-nix-pkgs";
  inputs."oauth".ref   = "master";
  inputs."oauth".repo  = "oauth";
  inputs."oauth".dir   = "v0_10";
  inputs."oauth".type  = "github";
  inputs."oauth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oauth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subexes".owner = "nim-nix-pkgs";
  inputs."subexes".ref   = "master";
  inputs."subexes".repo  = "subexes";
  inputs."subexes".dir   = "";
  inputs."subexes".type  = "github";
  inputs."subexes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subexes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-spotify-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-spotify-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
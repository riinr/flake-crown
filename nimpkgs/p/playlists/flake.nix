{
  description = ''Nim library for parsing PLS, M3U, and XSPF playlist files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."playlists-master".dir   = "master";
  inputs."playlists-master".owner = "nim-nix-pkgs";
  inputs."playlists-master".ref   = "master";
  inputs."playlists-master".repo  = "playlists";
  inputs."playlists-master".type  = "github";
  inputs."playlists-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."playlists-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
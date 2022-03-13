{
  description = ''A Nim wrapper for the Spotify Web API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spotify-master".dir   = "master";
  inputs."spotify-master".owner = "nim-nix-pkgs";
  inputs."spotify-master".ref   = "master";
  inputs."spotify-master".repo  = "spotify";
  inputs."spotify-master".type  = "github";
  inputs."spotify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spotify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spotify-v0_1".dir   = "v0_1";
  inputs."spotify-v0_1".owner = "nim-nix-pkgs";
  inputs."spotify-v0_1".ref   = "master";
  inputs."spotify-v0_1".repo  = "spotify";
  inputs."spotify-v0_1".type  = "github";
  inputs."spotify-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spotify-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spotify-v0_1_1".dir   = "v0_1_1";
  inputs."spotify-v0_1_1".owner = "nim-nix-pkgs";
  inputs."spotify-v0_1_1".ref   = "master";
  inputs."spotify-v0_1_1".repo  = "spotify";
  inputs."spotify-v0_1_1".type  = "github";
  inputs."spotify-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spotify-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Low-level multisync bindings to the ListenBrainz web API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."listenbrainz-master".dir   = "master";
  inputs."listenbrainz-master".owner = "nim-nix-pkgs";
  inputs."listenbrainz-master".ref   = "master";
  inputs."listenbrainz-master".repo  = "listenbrainz";
  inputs."listenbrainz-master".type  = "github";
  inputs."listenbrainz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."listenbrainz-0_1_0".dir   = "0_1_0";
  inputs."listenbrainz-0_1_0".owner = "nim-nix-pkgs";
  inputs."listenbrainz-0_1_0".ref   = "master";
  inputs."listenbrainz-0_1_0".repo  = "listenbrainz";
  inputs."listenbrainz-0_1_0".type  = "github";
  inputs."listenbrainz-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."listenbrainz-0_1_1".dir   = "0_1_1";
  inputs."listenbrainz-0_1_1".owner = "nim-nix-pkgs";
  inputs."listenbrainz-0_1_1".ref   = "master";
  inputs."listenbrainz-0_1_1".repo  = "listenbrainz";
  inputs."listenbrainz-0_1_1".type  = "github";
  inputs."listenbrainz-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."listenbrainz-0_1_2".dir   = "0_1_2";
  inputs."listenbrainz-0_1_2".owner = "nim-nix-pkgs";
  inputs."listenbrainz-0_1_2".ref   = "master";
  inputs."listenbrainz-0_1_2".repo  = "listenbrainz";
  inputs."listenbrainz-0_1_2".type  = "github";
  inputs."listenbrainz-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."listenbrainz-0_2".dir   = "0_2";
  inputs."listenbrainz-0_2".owner = "nim-nix-pkgs";
  inputs."listenbrainz-0_2".ref   = "master";
  inputs."listenbrainz-0_2".repo  = "listenbrainz";
  inputs."listenbrainz-0_2".type  = "github";
  inputs."listenbrainz-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."listenbrainz-0_2_1".dir   = "0_2_1";
  inputs."listenbrainz-0_2_1".owner = "nim-nix-pkgs";
  inputs."listenbrainz-0_2_1".ref   = "master";
  inputs."listenbrainz-0_2_1".repo  = "listenbrainz";
  inputs."listenbrainz-0_2_1".type  = "github";
  inputs."listenbrainz-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listenbrainz-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimqbittorrent-master".dir   = "master";
  inputs."nimqbittorrent-master".owner = "nim-nix-pkgs";
  inputs."nimqbittorrent-master".ref   = "master";
  inputs."nimqbittorrent-master".repo  = "nimqbittorrent";
  inputs."nimqbittorrent-master".type  = "github";
  inputs."nimqbittorrent-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqbittorrent-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqbittorrent-v0_1_0".dir   = "v0_1_0";
  inputs."nimqbittorrent-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimqbittorrent-v0_1_0".ref   = "master";
  inputs."nimqbittorrent-v0_1_0".repo  = "nimqbittorrent";
  inputs."nimqbittorrent-v0_1_0".type  = "github";
  inputs."nimqbittorrent-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqbittorrent-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqbittorrent-v0_1_2".dir   = "v0_1_2";
  inputs."nimqbittorrent-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimqbittorrent-v0_1_2".ref   = "master";
  inputs."nimqbittorrent-v0_1_2".repo  = "nimqbittorrent";
  inputs."nimqbittorrent-v0_1_2".type  = "github";
  inputs."nimqbittorrent-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqbittorrent-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
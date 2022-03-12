{
  description = ''a wrapper for the QBittorrent WebAPI for NIM.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimqbittorrent-master".url = "path:./master";
  inputs."nimqbittorrent-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqbittorrent-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqbittorrent-v0_1_0".url = "path:./v0_1_0";
  inputs."nimqbittorrent-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqbittorrent-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimqbittorrent-v0_1_2".url = "path:./v0_1_2";
  inputs."nimqbittorrent-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimqbittorrent-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
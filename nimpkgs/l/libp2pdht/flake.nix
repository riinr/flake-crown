{
  description = ''DHT based on the libp2p Kademlia spec'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libp2pdht-main".dir   = "main";
  inputs."libp2pdht-main".owner = "nim-nix-pkgs";
  inputs."libp2pdht-main".ref   = "master";
  inputs."libp2pdht-main".repo  = "libp2pdht";
  inputs."libp2pdht-main".type  = "github";
  inputs."libp2pdht-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libp2pdht-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libp2pdht-unstable".dir   = "unstable";
  inputs."libp2pdht-unstable".owner = "nim-nix-pkgs";
  inputs."libp2pdht-unstable".ref   = "master";
  inputs."libp2pdht-unstable".repo  = "libp2pdht";
  inputs."libp2pdht-unstable".type  = "github";
  inputs."libp2pdht-unstable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libp2pdht-unstable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
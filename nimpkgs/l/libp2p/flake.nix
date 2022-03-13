{
  description = ''libp2p implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libp2p-master".dir   = "master";
  inputs."libp2p-master".owner = "nim-nix-pkgs";
  inputs."libp2p-master".ref   = "master";
  inputs."libp2p-master".repo  = "libp2p";
  inputs."libp2p-master".type  = "github";
  inputs."libp2p-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libp2p-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libp2p-unstable".dir   = "unstable";
  inputs."libp2p-unstable".owner = "nim-nix-pkgs";
  inputs."libp2p-unstable".ref   = "master";
  inputs."libp2p-unstable".repo  = "libp2p";
  inputs."libp2p-unstable".type  = "github";
  inputs."libp2p-unstable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libp2p-unstable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
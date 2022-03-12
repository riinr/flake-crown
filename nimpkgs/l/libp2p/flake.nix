{
  description = ''libp2p implementation in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libp2p-master".url = "path:./master";
  inputs."libp2p-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libp2p-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libp2p-unstable".url = "path:./unstable";
  inputs."libp2p-unstable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libp2p-unstable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
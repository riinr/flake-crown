{
  description = ''A Nim wrapper for librtlsdr'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimrtlsdr-develop".url = "path:./develop";
  inputs."nimrtlsdr-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-master".url = "path:./master";
  inputs."nimrtlsdr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-v0_1".url = "path:./v0_1";
  inputs."nimrtlsdr-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-v0_1_1".url = "path:./v0_1_1";
  inputs."nimrtlsdr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-v0_1_2".url = "path:./v0_1_2";
  inputs."nimrtlsdr-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-v0_1_3".url = "path:./v0_1_3";
  inputs."nimrtlsdr-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-v0_1_4".url = "path:./v0_1_4";
  inputs."nimrtlsdr-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
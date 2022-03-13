{
  description = ''A Nim wrapper for librtlsdr'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimrtlsdr-develop".dir   = "develop";
  inputs."nimrtlsdr-develop".owner = "nim-nix-pkgs";
  inputs."nimrtlsdr-develop".ref   = "master";
  inputs."nimrtlsdr-develop".repo  = "nimrtlsdr";
  inputs."nimrtlsdr-develop".type  = "github";
  inputs."nimrtlsdr-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-master".dir   = "master";
  inputs."nimrtlsdr-master".owner = "nim-nix-pkgs";
  inputs."nimrtlsdr-master".ref   = "master";
  inputs."nimrtlsdr-master".repo  = "nimrtlsdr";
  inputs."nimrtlsdr-master".type  = "github";
  inputs."nimrtlsdr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-v0_1".dir   = "v0_1";
  inputs."nimrtlsdr-v0_1".owner = "nim-nix-pkgs";
  inputs."nimrtlsdr-v0_1".ref   = "master";
  inputs."nimrtlsdr-v0_1".repo  = "nimrtlsdr";
  inputs."nimrtlsdr-v0_1".type  = "github";
  inputs."nimrtlsdr-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-v0_1_1".dir   = "v0_1_1";
  inputs."nimrtlsdr-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimrtlsdr-v0_1_1".ref   = "master";
  inputs."nimrtlsdr-v0_1_1".repo  = "nimrtlsdr";
  inputs."nimrtlsdr-v0_1_1".type  = "github";
  inputs."nimrtlsdr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-v0_1_2".dir   = "v0_1_2";
  inputs."nimrtlsdr-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimrtlsdr-v0_1_2".ref   = "master";
  inputs."nimrtlsdr-v0_1_2".repo  = "nimrtlsdr";
  inputs."nimrtlsdr-v0_1_2".type  = "github";
  inputs."nimrtlsdr-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-v0_1_3".dir   = "v0_1_3";
  inputs."nimrtlsdr-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimrtlsdr-v0_1_3".ref   = "master";
  inputs."nimrtlsdr-v0_1_3".repo  = "nimrtlsdr";
  inputs."nimrtlsdr-v0_1_3".type  = "github";
  inputs."nimrtlsdr-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimrtlsdr-v0_1_4".dir   = "v0_1_4";
  inputs."nimrtlsdr-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimrtlsdr-v0_1_4".ref   = "master";
  inputs."nimrtlsdr-v0_1_4".repo  = "nimrtlsdr";
  inputs."nimrtlsdr-v0_1_4".type  = "github";
  inputs."nimrtlsdr-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrtlsdr-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
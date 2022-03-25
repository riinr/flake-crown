{
  description = ''A Nim wrapper for librtlsdr'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rtlsdr-develop".dir   = "develop";
  inputs."rtlsdr-develop".owner = "nim-nix-pkgs";
  inputs."rtlsdr-develop".ref   = "master";
  inputs."rtlsdr-develop".repo  = "rtlsdr";
  inputs."rtlsdr-develop".type  = "github";
  inputs."rtlsdr-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rtlsdr-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rtlsdr-master".dir   = "master";
  inputs."rtlsdr-master".owner = "nim-nix-pkgs";
  inputs."rtlsdr-master".ref   = "master";
  inputs."rtlsdr-master".repo  = "rtlsdr";
  inputs."rtlsdr-master".type  = "github";
  inputs."rtlsdr-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rtlsdr-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rtlsdr-v0_1".dir   = "v0_1";
  inputs."rtlsdr-v0_1".owner = "nim-nix-pkgs";
  inputs."rtlsdr-v0_1".ref   = "master";
  inputs."rtlsdr-v0_1".repo  = "rtlsdr";
  inputs."rtlsdr-v0_1".type  = "github";
  inputs."rtlsdr-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rtlsdr-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rtlsdr-v0_1_1".dir   = "v0_1_1";
  inputs."rtlsdr-v0_1_1".owner = "nim-nix-pkgs";
  inputs."rtlsdr-v0_1_1".ref   = "master";
  inputs."rtlsdr-v0_1_1".repo  = "rtlsdr";
  inputs."rtlsdr-v0_1_1".type  = "github";
  inputs."rtlsdr-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rtlsdr-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rtlsdr-v0_1_2".dir   = "v0_1_2";
  inputs."rtlsdr-v0_1_2".owner = "nim-nix-pkgs";
  inputs."rtlsdr-v0_1_2".ref   = "master";
  inputs."rtlsdr-v0_1_2".repo  = "rtlsdr";
  inputs."rtlsdr-v0_1_2".type  = "github";
  inputs."rtlsdr-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rtlsdr-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rtlsdr-v0_1_3".dir   = "v0_1_3";
  inputs."rtlsdr-v0_1_3".owner = "nim-nix-pkgs";
  inputs."rtlsdr-v0_1_3".ref   = "master";
  inputs."rtlsdr-v0_1_3".repo  = "rtlsdr";
  inputs."rtlsdr-v0_1_3".type  = "github";
  inputs."rtlsdr-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rtlsdr-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rtlsdr-v0_1_4".dir   = "v0_1_4";
  inputs."rtlsdr-v0_1_4".owner = "nim-nix-pkgs";
  inputs."rtlsdr-v0_1_4".ref   = "master";
  inputs."rtlsdr-v0_1_4".repo  = "rtlsdr";
  inputs."rtlsdr-v0_1_4".type  = "github";
  inputs."rtlsdr-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rtlsdr-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A library to operate serial ports using pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."serial-master".dir   = "master";
  inputs."serial-master".owner = "nim-nix-pkgs";
  inputs."serial-master".ref   = "master";
  inputs."serial-master".repo  = "serial";
  inputs."serial-master".type  = "github";
  inputs."serial-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libserialport-v0_1_0".dir   = "v0_1_0";
  inputs."libserialport-v0_1_0".owner = "nim-nix-pkgs";
  inputs."libserialport-v0_1_0".ref   = "master";
  inputs."libserialport-v0_1_0".repo  = "libserialport";
  inputs."libserialport-v0_1_0".type  = "github";
  inputs."libserialport-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libserialport-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_0_0".dir   = "v1_0_0";
  inputs."serial-v1_0_0".owner = "nim-nix-pkgs";
  inputs."serial-v1_0_0".ref   = "master";
  inputs."serial-v1_0_0".repo  = "serial";
  inputs."serial-v1_0_0".type  = "github";
  inputs."serial-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_0".dir   = "v1_1_0";
  inputs."serial-v1_1_0".owner = "nim-nix-pkgs";
  inputs."serial-v1_1_0".ref   = "master";
  inputs."serial-v1_1_0".repo  = "serial";
  inputs."serial-v1_1_0".type  = "github";
  inputs."serial-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_1".dir   = "v1_1_1";
  inputs."serial-v1_1_1".owner = "nim-nix-pkgs";
  inputs."serial-v1_1_1".ref   = "master";
  inputs."serial-v1_1_1".repo  = "serial";
  inputs."serial-v1_1_1".type  = "github";
  inputs."serial-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_2".dir   = "v1_1_2";
  inputs."serial-v1_1_2".owner = "nim-nix-pkgs";
  inputs."serial-v1_1_2".ref   = "master";
  inputs."serial-v1_1_2".repo  = "serial";
  inputs."serial-v1_1_2".type  = "github";
  inputs."serial-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_3".dir   = "v1_1_3";
  inputs."serial-v1_1_3".owner = "nim-nix-pkgs";
  inputs."serial-v1_1_3".ref   = "master";
  inputs."serial-v1_1_3".repo  = "serial";
  inputs."serial-v1_1_3".type  = "github";
  inputs."serial-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_4".dir   = "v1_1_4";
  inputs."serial-v1_1_4".owner = "nim-nix-pkgs";
  inputs."serial-v1_1_4".ref   = "master";
  inputs."serial-v1_1_4".repo  = "serial";
  inputs."serial-v1_1_4".type  = "github";
  inputs."serial-v1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."serial-v1_1_5".dir   = "v1_1_5";
  inputs."serial-v1_1_5".owner = "nim-nix-pkgs";
  inputs."serial-v1_1_5".ref   = "master";
  inputs."serial-v1_1_5".repo  = "serial";
  inputs."serial-v1_1_5".type  = "github";
  inputs."serial-v1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."serial-v1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Simple DNS Client & Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dnsclient-master".dir   = "master";
  inputs."dnsclient-master".owner = "nim-nix-pkgs";
  inputs."dnsclient-master".ref   = "master";
  inputs."dnsclient-master".repo  = "dnsclient";
  inputs."dnsclient-master".type  = "github";
  inputs."dnsclient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnsclient-0_0_1".dir   = "0_0_1";
  inputs."dnsclient-0_0_1".owner = "nim-nix-pkgs";
  inputs."dnsclient-0_0_1".ref   = "master";
  inputs."dnsclient-0_0_1".repo  = "dnsclient";
  inputs."dnsclient-0_0_1".type  = "github";
  inputs."dnsclient-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnsclient-0_0_2".dir   = "0_0_2";
  inputs."dnsclient-0_0_2".owner = "nim-nix-pkgs";
  inputs."dnsclient-0_0_2".ref   = "master";
  inputs."dnsclient-0_0_2".repo  = "dnsclient";
  inputs."dnsclient-0_0_2".type  = "github";
  inputs."dnsclient-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnsclient-0_0_3".dir   = "0_0_3";
  inputs."dnsclient-0_0_3".owner = "nim-nix-pkgs";
  inputs."dnsclient-0_0_3".ref   = "master";
  inputs."dnsclient-0_0_3".repo  = "dnsclient";
  inputs."dnsclient-0_0_3".type  = "github";
  inputs."dnsclient-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnsclient-0_1_0".dir   = "0_1_0";
  inputs."dnsclient-0_1_0".owner = "nim-nix-pkgs";
  inputs."dnsclient-0_1_0".ref   = "master";
  inputs."dnsclient-0_1_0".repo  = "dnsclient";
  inputs."dnsclient-0_1_0".type  = "github";
  inputs."dnsclient-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnsclient-0_1_1".dir   = "0_1_1";
  inputs."dnsclient-0_1_1".owner = "nim-nix-pkgs";
  inputs."dnsclient-0_1_1".ref   = "master";
  inputs."dnsclient-0_1_1".repo  = "dnsclient";
  inputs."dnsclient-0_1_1".type  = "github";
  inputs."dnsclient-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnsclient-0_1_2".dir   = "0_1_2";
  inputs."dnsclient-0_1_2".owner = "nim-nix-pkgs";
  inputs."dnsclient-0_1_2".ref   = "master";
  inputs."dnsclient-0_1_2".repo  = "dnsclient";
  inputs."dnsclient-0_1_2".type  = "github";
  inputs."dnsclient-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dnsclient-0_2_0".dir   = "0_2_0";
  inputs."dnsclient-0_2_0".owner = "nim-nix-pkgs";
  inputs."dnsclient-0_2_0".ref   = "master";
  inputs."dnsclient-0_2_0".repo  = "dnsclient";
  inputs."dnsclient-0_2_0".type  = "github";
  inputs."dnsclient-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dnsclient-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
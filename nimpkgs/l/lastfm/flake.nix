{
  description = ''Last.FM API bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lastfm-master".dir   = "master";
  inputs."lastfm-master".owner = "nim-nix-pkgs";
  inputs."lastfm-master".ref   = "master";
  inputs."lastfm-master".repo  = "lastfm";
  inputs."lastfm-master".type  = "github";
  inputs."lastfm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lastfm-0_6_0".dir   = "0_6_0";
  inputs."lastfm-0_6_0".owner = "nim-nix-pkgs";
  inputs."lastfm-0_6_0".ref   = "master";
  inputs."lastfm-0_6_0".repo  = "lastfm";
  inputs."lastfm-0_6_0".type  = "github";
  inputs."lastfm-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lastfm-0_7_0".dir   = "0_7_0";
  inputs."lastfm-0_7_0".owner = "nim-nix-pkgs";
  inputs."lastfm-0_7_0".ref   = "master";
  inputs."lastfm-0_7_0".repo  = "lastfm";
  inputs."lastfm-0_7_0".type  = "github";
  inputs."lastfm-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lastfm-0_8_0".dir   = "0_8_0";
  inputs."lastfm-0_8_0".owner = "nim-nix-pkgs";
  inputs."lastfm-0_8_0".ref   = "master";
  inputs."lastfm-0_8_0".repo  = "lastfm";
  inputs."lastfm-0_8_0".type  = "github";
  inputs."lastfm-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lastfm-0_8_1".dir   = "0_8_1";
  inputs."lastfm-0_8_1".owner = "nim-nix-pkgs";
  inputs."lastfm-0_8_1".ref   = "master";
  inputs."lastfm-0_8_1".repo  = "lastfm";
  inputs."lastfm-0_8_1".type  = "github";
  inputs."lastfm-0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lastfm-0_8_2".dir   = "0_8_2";
  inputs."lastfm-0_8_2".owner = "nim-nix-pkgs";
  inputs."lastfm-0_8_2".ref   = "master";
  inputs."lastfm-0_8_2".repo  = "lastfm";
  inputs."lastfm-0_8_2".type  = "github";
  inputs."lastfm-0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lastfm-0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
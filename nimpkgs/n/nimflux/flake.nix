{
  description = ''InfluxDB API client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimflux-master".dir   = "master";
  inputs."nimflux-master".owner = "nim-nix-pkgs";
  inputs."nimflux-master".ref   = "master";
  inputs."nimflux-master".repo  = "nimflux";
  inputs."nimflux-master".type  = "github";
  inputs."nimflux-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v0_1_0".dir   = "v0_1_0";
  inputs."nimflux-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimflux-v0_1_0".ref   = "master";
  inputs."nimflux-v0_1_0".repo  = "nimflux";
  inputs."nimflux-v0_1_0".type  = "github";
  inputs."nimflux-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v0_1_1".dir   = "v0_1_1";
  inputs."nimflux-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimflux-v0_1_1".ref   = "master";
  inputs."nimflux-v0_1_1".repo  = "nimflux";
  inputs."nimflux-v0_1_1".type  = "github";
  inputs."nimflux-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v0_1_2".dir   = "v0_1_2";
  inputs."nimflux-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimflux-v0_1_2".ref   = "master";
  inputs."nimflux-v0_1_2".repo  = "nimflux";
  inputs."nimflux-v0_1_2".type  = "github";
  inputs."nimflux-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v0_1_3".dir   = "v0_1_3";
  inputs."nimflux-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimflux-v0_1_3".ref   = "master";
  inputs."nimflux-v0_1_3".repo  = "nimflux";
  inputs."nimflux-v0_1_3".type  = "github";
  inputs."nimflux-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v1_0_0".dir   = "v1_0_0";
  inputs."nimflux-v1_0_0".owner = "nim-nix-pkgs";
  inputs."nimflux-v1_0_0".ref   = "master";
  inputs."nimflux-v1_0_0".repo  = "nimflux";
  inputs."nimflux-v1_0_0".type  = "github";
  inputs."nimflux-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v1_0_1".dir   = "v1_0_1";
  inputs."nimflux-v1_0_1".owner = "nim-nix-pkgs";
  inputs."nimflux-v1_0_1".ref   = "master";
  inputs."nimflux-v1_0_1".repo  = "nimflux";
  inputs."nimflux-v1_0_1".type  = "github";
  inputs."nimflux-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v1_0_2".dir   = "v1_0_2";
  inputs."nimflux-v1_0_2".owner = "nim-nix-pkgs";
  inputs."nimflux-v1_0_2".ref   = "master";
  inputs."nimflux-v1_0_2".repo  = "nimflux";
  inputs."nimflux-v1_0_2".type  = "github";
  inputs."nimflux-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimflux-v1_0_3".dir   = "v1_0_3";
  inputs."nimflux-v1_0_3".owner = "nim-nix-pkgs";
  inputs."nimflux-v1_0_3".ref   = "master";
  inputs."nimflux-v1_0_3".repo  = "nimflux";
  inputs."nimflux-v1_0_3".type  = "github";
  inputs."nimflux-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimflux-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
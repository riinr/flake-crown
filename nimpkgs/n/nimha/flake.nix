{
  description = ''Nim Home Assistant (NimHA) is a hub for combining multiple home automation devices and automating jobs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimha-master".dir   = "master";
  inputs."nimha-master".owner = "nim-nix-pkgs";
  inputs."nimha-master".ref   = "master";
  inputs."nimha-master".repo  = "nimha";
  inputs."nimha-master".type  = "github";
  inputs."nimha-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_0".dir   = "v0_3_0";
  inputs."nimha-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimha-v0_3_0".ref   = "master";
  inputs."nimha-v0_3_0".repo  = "nimha";
  inputs."nimha-v0_3_0".type  = "github";
  inputs."nimha-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_1".dir   = "v0_3_1";
  inputs."nimha-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimha-v0_3_1".ref   = "master";
  inputs."nimha-v0_3_1".repo  = "nimha";
  inputs."nimha-v0_3_1".type  = "github";
  inputs."nimha-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_2".dir   = "v0_3_2";
  inputs."nimha-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimha-v0_3_2".ref   = "master";
  inputs."nimha-v0_3_2".repo  = "nimha";
  inputs."nimha-v0_3_2".type  = "github";
  inputs."nimha-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_3".dir   = "v0_3_3";
  inputs."nimha-v0_3_3".owner = "nim-nix-pkgs";
  inputs."nimha-v0_3_3".ref   = "master";
  inputs."nimha-v0_3_3".repo  = "nimha";
  inputs."nimha-v0_3_3".type  = "github";
  inputs."nimha-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_5".dir   = "v0_3_5";
  inputs."nimha-v0_3_5".owner = "nim-nix-pkgs";
  inputs."nimha-v0_3_5".ref   = "master";
  inputs."nimha-v0_3_5".repo  = "nimha";
  inputs."nimha-v0_3_5".type  = "github";
  inputs."nimha-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_3_6".dir   = "v0_3_6";
  inputs."nimha-v0_3_6".owner = "nim-nix-pkgs";
  inputs."nimha-v0_3_6".ref   = "master";
  inputs."nimha-v0_3_6".repo  = "nimha";
  inputs."nimha-v0_3_6".type  = "github";
  inputs."nimha-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_4_0".dir   = "v0_4_0";
  inputs."nimha-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimha-v0_4_0".ref   = "master";
  inputs."nimha-v0_4_0".repo  = "nimha";
  inputs."nimha-v0_4_0".type  = "github";
  inputs."nimha-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_4_1".dir   = "v0_4_1";
  inputs."nimha-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimha-v0_4_1".ref   = "master";
  inputs."nimha-v0_4_1".repo  = "nimha";
  inputs."nimha-v0_4_1".type  = "github";
  inputs."nimha-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_4_3".dir   = "v0_4_3";
  inputs."nimha-v0_4_3".owner = "nim-nix-pkgs";
  inputs."nimha-v0_4_3".ref   = "master";
  inputs."nimha-v0_4_3".repo  = "nimha";
  inputs."nimha-v0_4_3".type  = "github";
  inputs."nimha-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_4_4".dir   = "v0_4_4";
  inputs."nimha-v0_4_4".owner = "nim-nix-pkgs";
  inputs."nimha-v0_4_4".ref   = "master";
  inputs."nimha-v0_4_4".repo  = "nimha";
  inputs."nimha-v0_4_4".type  = "github";
  inputs."nimha-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimha-v0_4_5".dir   = "v0_4_5";
  inputs."nimha-v0_4_5".owner = "nim-nix-pkgs";
  inputs."nimha-v0_4_5".ref   = "master";
  inputs."nimha-v0_4_5".repo  = "nimha";
  inputs."nimha-v0_4_5".type  = "github";
  inputs."nimha-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimha-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
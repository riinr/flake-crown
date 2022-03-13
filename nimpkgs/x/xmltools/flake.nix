{
  description = ''High level xml library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xmltools-master".dir   = "master";
  inputs."xmltools-master".owner = "nim-nix-pkgs";
  inputs."xmltools-master".ref   = "master";
  inputs."xmltools-master".repo  = "xmltools";
  inputs."xmltools-master".type  = "github";
  inputs."xmltools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_0_1".dir   = "v0_0_1";
  inputs."xmltools-v0_0_1".owner = "nim-nix-pkgs";
  inputs."xmltools-v0_0_1".ref   = "master";
  inputs."xmltools-v0_0_1".repo  = "xmltools";
  inputs."xmltools-v0_0_1".type  = "github";
  inputs."xmltools-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_0_2".dir   = "v0_0_2";
  inputs."xmltools-v0_0_2".owner = "nim-nix-pkgs";
  inputs."xmltools-v0_0_2".ref   = "master";
  inputs."xmltools-v0_0_2".repo  = "xmltools";
  inputs."xmltools-v0_0_2".type  = "github";
  inputs."xmltools-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_0_3".dir   = "v0_0_3";
  inputs."xmltools-v0_0_3".owner = "nim-nix-pkgs";
  inputs."xmltools-v0_0_3".ref   = "master";
  inputs."xmltools-v0_0_3".repo  = "xmltools";
  inputs."xmltools-v0_0_3".type  = "github";
  inputs."xmltools-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_0".dir   = "v0_1_0";
  inputs."xmltools-v0_1_0".owner = "nim-nix-pkgs";
  inputs."xmltools-v0_1_0".ref   = "master";
  inputs."xmltools-v0_1_0".repo  = "xmltools";
  inputs."xmltools-v0_1_0".type  = "github";
  inputs."xmltools-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_1".dir   = "v0_1_1";
  inputs."xmltools-v0_1_1".owner = "nim-nix-pkgs";
  inputs."xmltools-v0_1_1".ref   = "master";
  inputs."xmltools-v0_1_1".repo  = "xmltools";
  inputs."xmltools-v0_1_1".type  = "github";
  inputs."xmltools-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_2".dir   = "v0_1_2";
  inputs."xmltools-v0_1_2".owner = "nim-nix-pkgs";
  inputs."xmltools-v0_1_2".ref   = "master";
  inputs."xmltools-v0_1_2".repo  = "xmltools";
  inputs."xmltools-v0_1_2".type  = "github";
  inputs."xmltools-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_3".dir   = "v0_1_3";
  inputs."xmltools-v0_1_3".owner = "nim-nix-pkgs";
  inputs."xmltools-v0_1_3".ref   = "master";
  inputs."xmltools-v0_1_3".repo  = "xmltools";
  inputs."xmltools-v0_1_3".type  = "github";
  inputs."xmltools-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_4".dir   = "v0_1_4";
  inputs."xmltools-v0_1_4".owner = "nim-nix-pkgs";
  inputs."xmltools-v0_1_4".ref   = "master";
  inputs."xmltools-v0_1_4".repo  = "xmltools";
  inputs."xmltools-v0_1_4".type  = "github";
  inputs."xmltools-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_5".dir   = "v0_1_5";
  inputs."xmltools-v0_1_5".owner = "nim-nix-pkgs";
  inputs."xmltools-v0_1_5".ref   = "master";
  inputs."xmltools-v0_1_5".repo  = "xmltools";
  inputs."xmltools-v0_1_5".type  = "github";
  inputs."xmltools-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
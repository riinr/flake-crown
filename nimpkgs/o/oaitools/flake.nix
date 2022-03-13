{
  description = ''A high-level OAI-PMH library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."oaitools-master".dir   = "master";
  inputs."oaitools-master".owner = "nim-nix-pkgs";
  inputs."oaitools-master".ref   = "master";
  inputs."oaitools-master".repo  = "oaitools";
  inputs."oaitools-master".type  = "github";
  inputs."oaitools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oaitools-v0_1_0".dir   = "v0_1_0";
  inputs."oaitools-v0_1_0".owner = "nim-nix-pkgs";
  inputs."oaitools-v0_1_0".ref   = "master";
  inputs."oaitools-v0_1_0".repo  = "oaitools";
  inputs."oaitools-v0_1_0".type  = "github";
  inputs."oaitools-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oaitools-v0_2_0".dir   = "v0_2_0";
  inputs."oaitools-v0_2_0".owner = "nim-nix-pkgs";
  inputs."oaitools-v0_2_0".ref   = "master";
  inputs."oaitools-v0_2_0".repo  = "oaitools";
  inputs."oaitools-v0_2_0".type  = "github";
  inputs."oaitools-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oaitools-v0_2_1".dir   = "v0_2_1";
  inputs."oaitools-v0_2_1".owner = "nim-nix-pkgs";
  inputs."oaitools-v0_2_1".ref   = "master";
  inputs."oaitools-v0_2_1".repo  = "oaitools";
  inputs."oaitools-v0_2_1".type  = "github";
  inputs."oaitools-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oaitools-v0_2_2".dir   = "v0_2_2";
  inputs."oaitools-v0_2_2".owner = "nim-nix-pkgs";
  inputs."oaitools-v0_2_2".ref   = "master";
  inputs."oaitools-v0_2_2".repo  = "oaitools";
  inputs."oaitools-v0_2_2".type  = "github";
  inputs."oaitools-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oaitools-v0_2_3".dir   = "v0_2_3";
  inputs."oaitools-v0_2_3".owner = "nim-nix-pkgs";
  inputs."oaitools-v0_2_3".ref   = "master";
  inputs."oaitools-v0_2_3".repo  = "oaitools";
  inputs."oaitools-v0_2_3".type  = "github";
  inputs."oaitools-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oaitools-v0_2_4".dir   = "v0_2_4";
  inputs."oaitools-v0_2_4".owner = "nim-nix-pkgs";
  inputs."oaitools-v0_2_4".ref   = "master";
  inputs."oaitools-v0_2_4".repo  = "oaitools";
  inputs."oaitools-v0_2_4".type  = "github";
  inputs."oaitools-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oaitools-v0_2_5".dir   = "v0_2_5";
  inputs."oaitools-v0_2_5".owner = "nim-nix-pkgs";
  inputs."oaitools-v0_2_5".ref   = "master";
  inputs."oaitools-v0_2_5".repo  = "oaitools";
  inputs."oaitools-v0_2_5".type  = "github";
  inputs."oaitools-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oaitools-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''library for scraping google search results'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."googlesearch-master".dir   = "master";
  inputs."googlesearch-master".owner = "nim-nix-pkgs";
  inputs."googlesearch-master".ref   = "master";
  inputs."googlesearch-master".repo  = "googlesearch";
  inputs."googlesearch-master".type  = "github";
  inputs."googlesearch-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_1_0".dir   = "v0_1_0";
  inputs."googlesearch-v0_1_0".owner = "nim-nix-pkgs";
  inputs."googlesearch-v0_1_0".ref   = "master";
  inputs."googlesearch-v0_1_0".repo  = "googlesearch";
  inputs."googlesearch-v0_1_0".type  = "github";
  inputs."googlesearch-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_1_1".dir   = "v0_1_1";
  inputs."googlesearch-v0_1_1".owner = "nim-nix-pkgs";
  inputs."googlesearch-v0_1_1".ref   = "master";
  inputs."googlesearch-v0_1_1".repo  = "googlesearch";
  inputs."googlesearch-v0_1_1".type  = "github";
  inputs."googlesearch-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_2_0".dir   = "v0_2_0";
  inputs."googlesearch-v0_2_0".owner = "nim-nix-pkgs";
  inputs."googlesearch-v0_2_0".ref   = "master";
  inputs."googlesearch-v0_2_0".repo  = "googlesearch";
  inputs."googlesearch-v0_2_0".type  = "github";
  inputs."googlesearch-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_3_0".dir   = "v0_3_0";
  inputs."googlesearch-v0_3_0".owner = "nim-nix-pkgs";
  inputs."googlesearch-v0_3_0".ref   = "master";
  inputs."googlesearch-v0_3_0".repo  = "googlesearch";
  inputs."googlesearch-v0_3_0".type  = "github";
  inputs."googlesearch-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_3_1".dir   = "v0_3_1";
  inputs."googlesearch-v0_3_1".owner = "nim-nix-pkgs";
  inputs."googlesearch-v0_3_1".ref   = "master";
  inputs."googlesearch-v0_3_1".repo  = "googlesearch";
  inputs."googlesearch-v0_3_1".type  = "github";
  inputs."googlesearch-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_4_0".dir   = "v0_4_0";
  inputs."googlesearch-v0_4_0".owner = "nim-nix-pkgs";
  inputs."googlesearch-v0_4_0".ref   = "master";
  inputs."googlesearch-v0_4_0".repo  = "googlesearch";
  inputs."googlesearch-v0_4_0".type  = "github";
  inputs."googlesearch-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googlesearch-v0_4_1".dir   = "v0_4_1";
  inputs."googlesearch-v0_4_1".owner = "nim-nix-pkgs";
  inputs."googlesearch-v0_4_1".ref   = "master";
  inputs."googlesearch-v0_4_1".repo  = "googlesearch";
  inputs."googlesearch-v0_4_1".type  = "github";
  inputs."googlesearch-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googlesearch-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
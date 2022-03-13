{
  description = ''Fuzzy search wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfuzzy-master".dir   = "master";
  inputs."nimfuzzy-master".owner = "nim-nix-pkgs";
  inputs."nimfuzzy-master".ref   = "master";
  inputs."nimfuzzy-master".repo  = "nimfuzzy";
  inputs."nimfuzzy-master".type  = "github";
  inputs."nimfuzzy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzzy-v0_1_0".dir   = "v0_1_0";
  inputs."nimfuzzy-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimfuzzy-v0_1_0".ref   = "master";
  inputs."nimfuzzy-v0_1_0".repo  = "nimfuzzy";
  inputs."nimfuzzy-v0_1_0".type  = "github";
  inputs."nimfuzzy-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzzy-v0_1_2".dir   = "v0_1_2";
  inputs."nimfuzzy-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nimfuzzy-v0_1_2".ref   = "master";
  inputs."nimfuzzy-v0_1_2".repo  = "nimfuzzy";
  inputs."nimfuzzy-v0_1_2".type  = "github";
  inputs."nimfuzzy-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzzy-v0_1_3".dir   = "v0_1_3";
  inputs."nimfuzzy-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nimfuzzy-v0_1_3".ref   = "master";
  inputs."nimfuzzy-v0_1_3".repo  = "nimfuzzy";
  inputs."nimfuzzy-v0_1_3".type  = "github";
  inputs."nimfuzzy-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzzy-v0_1_4".dir   = "v0_1_4";
  inputs."nimfuzzy-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nimfuzzy-v0_1_4".ref   = "master";
  inputs."nimfuzzy-v0_1_4".repo  = "nimfuzzy";
  inputs."nimfuzzy-v0_1_4".type  = "github";
  inputs."nimfuzzy-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzzy-v0_1_5".dir   = "v0_1_5";
  inputs."nimfuzzy-v0_1_5".owner = "nim-nix-pkgs";
  inputs."nimfuzzy-v0_1_5".ref   = "master";
  inputs."nimfuzzy-v0_1_5".repo  = "nimfuzzy";
  inputs."nimfuzzy-v0_1_5".type  = "github";
  inputs."nimfuzzy-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
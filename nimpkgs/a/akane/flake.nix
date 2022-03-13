{
  description = ''The Nim asynchronous web framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."akane-master".dir   = "master";
  inputs."akane-master".owner = "nim-nix-pkgs";
  inputs."akane-master".ref   = "master";
  inputs."akane-master".repo  = "akane";
  inputs."akane-master".type  = "github";
  inputs."akane-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-0_2_0".dir   = "0_2_0";
  inputs."akane-0_2_0".owner = "nim-nix-pkgs";
  inputs."akane-0_2_0".ref   = "master";
  inputs."akane-0_2_0".repo  = "akane";
  inputs."akane-0_2_0".type  = "github";
  inputs."akane-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_0".dir   = "v0_1_0";
  inputs."akane-v0_1_0".owner = "nim-nix-pkgs";
  inputs."akane-v0_1_0".ref   = "master";
  inputs."akane-v0_1_0".repo  = "akane";
  inputs."akane-v0_1_0".type  = "github";
  inputs."akane-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_1".dir   = "v0_1_1";
  inputs."akane-v0_1_1".owner = "nim-nix-pkgs";
  inputs."akane-v0_1_1".ref   = "master";
  inputs."akane-v0_1_1".repo  = "akane";
  inputs."akane-v0_1_1".type  = "github";
  inputs."akane-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_1b".dir   = "v0_1_1b";
  inputs."akane-v0_1_1b".owner = "nim-nix-pkgs";
  inputs."akane-v0_1_1b".ref   = "master";
  inputs."akane-v0_1_1b".repo  = "akane";
  inputs."akane-v0_1_1b".type  = "github";
  inputs."akane-v0_1_1b".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_1b".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_2".dir   = "v0_1_2";
  inputs."akane-v0_1_2".owner = "nim-nix-pkgs";
  inputs."akane-v0_1_2".ref   = "master";
  inputs."akane-v0_1_2".repo  = "akane";
  inputs."akane-v0_1_2".type  = "github";
  inputs."akane-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_3".dir   = "v0_1_3";
  inputs."akane-v0_1_3".owner = "nim-nix-pkgs";
  inputs."akane-v0_1_3".ref   = "master";
  inputs."akane-v0_1_3".repo  = "akane";
  inputs."akane-v0_1_3".type  = "github";
  inputs."akane-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_5".dir   = "v0_1_5";
  inputs."akane-v0_1_5".owner = "nim-nix-pkgs";
  inputs."akane-v0_1_5".ref   = "master";
  inputs."akane-v0_1_5".repo  = "akane";
  inputs."akane-v0_1_5".type  = "github";
  inputs."akane-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_6".dir   = "v0_1_6";
  inputs."akane-v0_1_6".owner = "nim-nix-pkgs";
  inputs."akane-v0_1_6".ref   = "master";
  inputs."akane-v0_1_6".repo  = "akane";
  inputs."akane-v0_1_6".type  = "github";
  inputs."akane-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."akane-v0_1_7".dir   = "v0_1_7";
  inputs."akane-v0_1_7".owner = "nim-nix-pkgs";
  inputs."akane-v0_1_7".ref   = "master";
  inputs."akane-v0_1_7".repo  = "akane";
  inputs."akane-v0_1_7".type  = "github";
  inputs."akane-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."akane-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
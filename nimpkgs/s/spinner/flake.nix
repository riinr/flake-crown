{
  description = ''Prebuilt components for the Fidget GUI library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spinner-master".dir   = "master";
  inputs."spinner-master".owner = "nim-nix-pkgs";
  inputs."spinner-master".ref   = "master";
  inputs."spinner-master".repo  = "spinner";
  inputs."spinner-master".type  = "github";
  inputs."spinner-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spinner-v0_1_0".dir   = "v0_1_0";
  inputs."spinner-v0_1_0".owner = "nim-nix-pkgs";
  inputs."spinner-v0_1_0".ref   = "master";
  inputs."spinner-v0_1_0".repo  = "spinner";
  inputs."spinner-v0_1_0".type  = "github";
  inputs."spinner-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spinner-v0_1_1".dir   = "v0_1_1";
  inputs."spinner-v0_1_1".owner = "nim-nix-pkgs";
  inputs."spinner-v0_1_1".ref   = "master";
  inputs."spinner-v0_1_1".repo  = "spinner";
  inputs."spinner-v0_1_1".type  = "github";
  inputs."spinner-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spinner-v0_1_2".dir   = "v0_1_2";
  inputs."spinner-v0_1_2".owner = "nim-nix-pkgs";
  inputs."spinner-v0_1_2".ref   = "master";
  inputs."spinner-v0_1_2".repo  = "spinner";
  inputs."spinner-v0_1_2".type  = "github";
  inputs."spinner-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spinner-v0_1_3".dir   = "v0_1_3";
  inputs."spinner-v0_1_3".owner = "nim-nix-pkgs";
  inputs."spinner-v0_1_3".ref   = "master";
  inputs."spinner-v0_1_3".repo  = "spinner";
  inputs."spinner-v0_1_3".type  = "github";
  inputs."spinner-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spinner-v0_2_0".dir   = "v0_2_0";
  inputs."spinner-v0_2_0".owner = "nim-nix-pkgs";
  inputs."spinner-v0_2_0".ref   = "master";
  inputs."spinner-v0_2_0".repo  = "spinner";
  inputs."spinner-v0_2_0".type  = "github";
  inputs."spinner-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spinner-v0_2_1".dir   = "v0_2_1";
  inputs."spinner-v0_2_1".owner = "nim-nix-pkgs";
  inputs."spinner-v0_2_1".ref   = "master";
  inputs."spinner-v0_2_1".repo  = "spinner";
  inputs."spinner-v0_2_1".type  = "github";
  inputs."spinner-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spinner-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
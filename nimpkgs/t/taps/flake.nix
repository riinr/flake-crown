{
  description = ''Transport Services Interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."taps-trunk".dir   = "trunk";
  inputs."taps-trunk".owner = "nim-nix-pkgs";
  inputs."taps-trunk".ref   = "master";
  inputs."taps-trunk".repo  = "taps";
  inputs."taps-trunk".type  = "github";
  inputs."taps-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taps-0_2_1".dir   = "0_2_1";
  inputs."taps-0_2_1".owner = "nim-nix-pkgs";
  inputs."taps-0_2_1".ref   = "master";
  inputs."taps-0_2_1".repo  = "taps";
  inputs."taps-0_2_1".type  = "github";
  inputs."taps-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taps-0_2_2".dir   = "0_2_2";
  inputs."taps-0_2_2".owner = "nim-nix-pkgs";
  inputs."taps-0_2_2".ref   = "master";
  inputs."taps-0_2_2".repo  = "taps";
  inputs."taps-0_2_2".type  = "github";
  inputs."taps-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taps-0_2_3".dir   = "0_2_3";
  inputs."taps-0_2_3".owner = "nim-nix-pkgs";
  inputs."taps-0_2_3".ref   = "master";
  inputs."taps-0_2_3".repo  = "taps";
  inputs."taps-0_2_3".type  = "github";
  inputs."taps-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taps-v0_1_0".dir   = "v0_1_0";
  inputs."taps-v0_1_0".owner = "nim-nix-pkgs";
  inputs."taps-v0_1_0".ref   = "master";
  inputs."taps-v0_1_0".repo  = "taps";
  inputs."taps-v0_1_0".type  = "github";
  inputs."taps-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taps-v0_2_0".dir   = "v0_2_0";
  inputs."taps-v0_2_0".owner = "nim-nix-pkgs";
  inputs."taps-v0_2_0".ref   = "master";
  inputs."taps-v0_2_0".repo  = "taps";
  inputs."taps-v0_2_0".type  = "github";
  inputs."taps-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A library for making MIDI music'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."paramidi-master".dir   = "master";
  inputs."paramidi-master".owner = "nim-nix-pkgs";
  inputs."paramidi-master".ref   = "master";
  inputs."paramidi-master".repo  = "paramidi";
  inputs."paramidi-master".type  = "github";
  inputs."paramidi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_1_0".dir   = "0_1_0";
  inputs."paramidi-0_1_0".owner = "nim-nix-pkgs";
  inputs."paramidi-0_1_0".ref   = "master";
  inputs."paramidi-0_1_0".repo  = "paramidi";
  inputs."paramidi-0_1_0".type  = "github";
  inputs."paramidi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_2_0".dir   = "0_2_0";
  inputs."paramidi-0_2_0".owner = "nim-nix-pkgs";
  inputs."paramidi-0_2_0".ref   = "master";
  inputs."paramidi-0_2_0".repo  = "paramidi";
  inputs."paramidi-0_2_0".type  = "github";
  inputs."paramidi-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_3_0".dir   = "0_3_0";
  inputs."paramidi-0_3_0".owner = "nim-nix-pkgs";
  inputs."paramidi-0_3_0".ref   = "master";
  inputs."paramidi-0_3_0".repo  = "paramidi";
  inputs."paramidi-0_3_0".type  = "github";
  inputs."paramidi-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_4_0".dir   = "0_4_0";
  inputs."paramidi-0_4_0".owner = "nim-nix-pkgs";
  inputs."paramidi-0_4_0".ref   = "master";
  inputs."paramidi-0_4_0".repo  = "paramidi";
  inputs."paramidi-0_4_0".type  = "github";
  inputs."paramidi-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_5_0".dir   = "0_5_0";
  inputs."paramidi-0_5_0".owner = "nim-nix-pkgs";
  inputs."paramidi-0_5_0".ref   = "master";
  inputs."paramidi-0_5_0".repo  = "paramidi";
  inputs."paramidi-0_5_0".type  = "github";
  inputs."paramidi-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi-0_6_0".dir   = "0_6_0";
  inputs."paramidi-0_6_0".owner = "nim-nix-pkgs";
  inputs."paramidi-0_6_0".ref   = "master";
  inputs."paramidi-0_6_0".repo  = "paramidi";
  inputs."paramidi-0_6_0".type  = "github";
  inputs."paramidi-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
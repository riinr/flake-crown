{
  description = ''for loop macros'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."looper-master".dir   = "master";
  inputs."looper-master".owner = "nim-nix-pkgs";
  inputs."looper-master".ref   = "master";
  inputs."looper-master".repo  = "looper";
  inputs."looper-master".type  = "github";
  inputs."looper-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."looper-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."looper-v0_2_0".dir   = "v0_2_0";
  inputs."looper-v0_2_0".owner = "nim-nix-pkgs";
  inputs."looper-v0_2_0".ref   = "master";
  inputs."looper-v0_2_0".repo  = "looper";
  inputs."looper-v0_2_0".type  = "github";
  inputs."looper-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."looper-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."looper-v0_4_0".dir   = "v0_4_0";
  inputs."looper-v0_4_0".owner = "nim-nix-pkgs";
  inputs."looper-v0_4_0".ref   = "master";
  inputs."looper-v0_4_0".repo  = "looper";
  inputs."looper-v0_4_0".type  = "github";
  inputs."looper-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."looper-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."looper-v0_5_0".dir   = "v0_5_0";
  inputs."looper-v0_5_0".owner = "nim-nix-pkgs";
  inputs."looper-v0_5_0".ref   = "master";
  inputs."looper-v0_5_0".repo  = "looper";
  inputs."looper-v0_5_0".type  = "github";
  inputs."looper-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."looper-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."looper-v0_6_0".dir   = "v0_6_0";
  inputs."looper-v0_6_0".owner = "nim-nix-pkgs";
  inputs."looper-v0_6_0".ref   = "master";
  inputs."looper-v0_6_0".repo  = "looper";
  inputs."looper-v0_6_0".type  = "github";
  inputs."looper-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."looper-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."looper-v0_7_0".dir   = "v0_7_0";
  inputs."looper-v0_7_0".owner = "nim-nix-pkgs";
  inputs."looper-v0_7_0".ref   = "master";
  inputs."looper-v0_7_0".repo  = "looper";
  inputs."looper-v0_7_0".type  = "github";
  inputs."looper-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."looper-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."looper-v0_8_0".dir   = "v0_8_0";
  inputs."looper-v0_8_0".owner = "nim-nix-pkgs";
  inputs."looper-v0_8_0".ref   = "master";
  inputs."looper-v0_8_0".repo  = "looper";
  inputs."looper-v0_8_0".type  = "github";
  inputs."looper-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."looper-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
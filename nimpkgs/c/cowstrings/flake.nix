{
  description = ''Copy-On-Write string implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cowstrings-main".dir   = "main";
  inputs."cowstrings-main".owner = "nim-nix-pkgs";
  inputs."cowstrings-main".ref   = "master";
  inputs."cowstrings-main".repo  = "cowstrings";
  inputs."cowstrings-main".type  = "github";
  inputs."cowstrings-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cowstrings-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cowstrings-v0_1_0".dir   = "v0_1_0";
  inputs."cowstrings-v0_1_0".owner = "nim-nix-pkgs";
  inputs."cowstrings-v0_1_0".ref   = "master";
  inputs."cowstrings-v0_1_0".repo  = "cowstrings";
  inputs."cowstrings-v0_1_0".type  = "github";
  inputs."cowstrings-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cowstrings-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cowstrings-v0_2_0".dir   = "v0_2_0";
  inputs."cowstrings-v0_2_0".owner = "nim-nix-pkgs";
  inputs."cowstrings-v0_2_0".ref   = "master";
  inputs."cowstrings-v0_2_0".repo  = "cowstrings";
  inputs."cowstrings-v0_2_0".type  = "github";
  inputs."cowstrings-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cowstrings-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cowstrings-v0_3_0".dir   = "v0_3_0";
  inputs."cowstrings-v0_3_0".owner = "nim-nix-pkgs";
  inputs."cowstrings-v0_3_0".ref   = "master";
  inputs."cowstrings-v0_3_0".repo  = "cowstrings";
  inputs."cowstrings-v0_3_0".type  = "github";
  inputs."cowstrings-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cowstrings-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cowstrings-v0_4_0".dir   = "v0_4_0";
  inputs."cowstrings-v0_4_0".owner = "nim-nix-pkgs";
  inputs."cowstrings-v0_4_0".ref   = "master";
  inputs."cowstrings-v0_4_0".repo  = "cowstrings";
  inputs."cowstrings-v0_4_0".type  = "github";
  inputs."cowstrings-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cowstrings-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cowstrings-v0_5_0".dir   = "v0_5_0";
  inputs."cowstrings-v0_5_0".owner = "nim-nix-pkgs";
  inputs."cowstrings-v0_5_0".ref   = "master";
  inputs."cowstrings-v0_5_0".repo  = "cowstrings";
  inputs."cowstrings-v0_5_0".type  = "github";
  inputs."cowstrings-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cowstrings-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
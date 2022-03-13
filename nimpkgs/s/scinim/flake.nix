{
  description = ''The core types and functions of the SciNim ecosystem'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."scinim-main".dir   = "main";
  inputs."scinim-main".owner = "nim-nix-pkgs";
  inputs."scinim-main".ref   = "master";
  inputs."scinim-main".repo  = "scinim";
  inputs."scinim-main".type  = "github";
  inputs."scinim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scinim-v0_1_0".dir   = "v0_1_0";
  inputs."scinim-v0_1_0".owner = "nim-nix-pkgs";
  inputs."scinim-v0_1_0".ref   = "master";
  inputs."scinim-v0_1_0".repo  = "scinim";
  inputs."scinim-v0_1_0".type  = "github";
  inputs."scinim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scinim-v0_2_2".dir   = "v0_2_2";
  inputs."scinim-v0_2_2".owner = "nim-nix-pkgs";
  inputs."scinim-v0_2_2".ref   = "master";
  inputs."scinim-v0_2_2".repo  = "scinim";
  inputs."scinim-v0_2_2".type  = "github";
  inputs."scinim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scinim-v0_2_3".dir   = "v0_2_3";
  inputs."scinim-v0_2_3".owner = "nim-nix-pkgs";
  inputs."scinim-v0_2_3".ref   = "master";
  inputs."scinim-v0_2_3".repo  = "scinim";
  inputs."scinim-v0_2_3".type  = "github";
  inputs."scinim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
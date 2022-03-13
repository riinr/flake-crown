{
  description = ''Algebraic structures and related operations for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."emmy-master".dir   = "master";
  inputs."emmy-master".owner = "nim-nix-pkgs";
  inputs."emmy-master".ref   = "master";
  inputs."emmy-master".repo  = "emmy";
  inputs."emmy-master".type  = "github";
  inputs."emmy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emmy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emmy-0_1_0".dir   = "0_1_0";
  inputs."emmy-0_1_0".owner = "nim-nix-pkgs";
  inputs."emmy-0_1_0".ref   = "master";
  inputs."emmy-0_1_0".repo  = "emmy";
  inputs."emmy-0_1_0".type  = "github";
  inputs."emmy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emmy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."emmy-0_2_0".dir   = "0_2_0";
  inputs."emmy-0_2_0".owner = "nim-nix-pkgs";
  inputs."emmy-0_2_0".ref   = "master";
  inputs."emmy-0_2_0".repo  = "emmy";
  inputs."emmy-0_2_0".type  = "github";
  inputs."emmy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."emmy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
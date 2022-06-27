{
  description = ''Client library for https://getpantry.cloud/'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pantry-master".dir   = "master";
  inputs."pantry-master".owner = "nim-nix-pkgs";
  inputs."pantry-master".ref   = "master";
  inputs."pantry-master".repo  = "pantry";
  inputs."pantry-master".type  = "github";
  inputs."pantry-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pantry-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pantry-0_1_0".dir   = "0_1_0";
  inputs."pantry-0_1_0".owner = "nim-nix-pkgs";
  inputs."pantry-0_1_0".ref   = "master";
  inputs."pantry-0_1_0".repo  = "pantry";
  inputs."pantry-0_1_0".type  = "github";
  inputs."pantry-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pantry-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pantry-0_2_0".dir   = "0_2_0";
  inputs."pantry-0_2_0".owner = "nim-nix-pkgs";
  inputs."pantry-0_2_0".ref   = "master";
  inputs."pantry-0_2_0".repo  = "pantry";
  inputs."pantry-0_2_0".type  = "github";
  inputs."pantry-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pantry-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pantry-0_3_0".dir   = "0_3_0";
  inputs."pantry-0_3_0".owner = "nim-nix-pkgs";
  inputs."pantry-0_3_0".ref   = "master";
  inputs."pantry-0_3_0".repo  = "pantry";
  inputs."pantry-0_3_0".type  = "github";
  inputs."pantry-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pantry-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pantry-0_3_1".dir   = "0_3_1";
  inputs."pantry-0_3_1".owner = "nim-nix-pkgs";
  inputs."pantry-0_3_1".ref   = "master";
  inputs."pantry-0_3_1".repo  = "pantry";
  inputs."pantry-0_3_1".type  = "github";
  inputs."pantry-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pantry-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Generalized linear models in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."linear_models-master".dir   = "master";
  inputs."linear_models-master".owner = "nim-nix-pkgs";
  inputs."linear_models-master".ref   = "master";
  inputs."linear_models-master".repo  = "linear_models";
  inputs."linear_models-master".type  = "github";
  inputs."linear_models-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linear_models-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linear_models-v0_1_0".dir   = "v0_1_0";
  inputs."linear_models-v0_1_0".owner = "nim-nix-pkgs";
  inputs."linear_models-v0_1_0".ref   = "master";
  inputs."linear_models-v0_1_0".repo  = "linear_models";
  inputs."linear_models-v0_1_0".type  = "github";
  inputs."linear_models-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linear_models-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."linear_models-v0_2_0".dir   = "v0_2_0";
  inputs."linear_models-v0_2_0".owner = "nim-nix-pkgs";
  inputs."linear_models-v0_2_0".ref   = "master";
  inputs."linear_models-v0_2_0".repo  = "linear_models";
  inputs."linear_models-v0_2_0".type  = "github";
  inputs."linear_models-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."linear_models-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
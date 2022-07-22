{
  description = ''Special mathematical functions in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."special_functions-master".dir   = "master";
  inputs."special_functions-master".owner = "nim-nix-pkgs";
  inputs."special_functions-master".ref   = "master";
  inputs."special_functions-master".repo  = "special_functions";
  inputs."special_functions-master".type  = "github";
  inputs."special_functions-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."special_functions-v0_1_0".dir   = "v0_1_0";
  inputs."special_functions-v0_1_0".owner = "nim-nix-pkgs";
  inputs."special_functions-v0_1_0".ref   = "master";
  inputs."special_functions-v0_1_0".repo  = "special_functions";
  inputs."special_functions-v0_1_0".type  = "github";
  inputs."special_functions-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."special_functions-v0_1_1".dir   = "v0_1_1";
  inputs."special_functions-v0_1_1".owner = "nim-nix-pkgs";
  inputs."special_functions-v0_1_1".ref   = "master";
  inputs."special_functions-v0_1_1".repo  = "special_functions";
  inputs."special_functions-v0_1_1".type  = "github";
  inputs."special_functions-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."special_functions-v0_2_0".dir   = "v0_2_0";
  inputs."special_functions-v0_2_0".owner = "nim-nix-pkgs";
  inputs."special_functions-v0_2_0".ref   = "master";
  inputs."special_functions-v0_2_0".repo  = "special_functions";
  inputs."special_functions-v0_2_0".type  = "github";
  inputs."special_functions-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."special_functions-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
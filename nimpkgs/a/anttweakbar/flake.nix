{
  description = ''nim wrapper around the AntTweakBar c library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."anttweakbar-master".dir   = "master";
  inputs."anttweakbar-master".owner = "nim-nix-pkgs";
  inputs."anttweakbar-master".ref   = "master";
  inputs."anttweakbar-master".repo  = "anttweakbar";
  inputs."anttweakbar-master".type  = "github";
  inputs."anttweakbar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anttweakbar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anttweakbar-v1_0_2".dir   = "v1_0_2";
  inputs."anttweakbar-v1_0_2".owner = "nim-nix-pkgs";
  inputs."anttweakbar-v1_0_2".ref   = "master";
  inputs."anttweakbar-v1_0_2".repo  = "anttweakbar";
  inputs."anttweakbar-v1_0_2".type  = "github";
  inputs."anttweakbar-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anttweakbar-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
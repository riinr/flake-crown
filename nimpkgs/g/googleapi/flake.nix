{
  description = ''Google API for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."googleapi-master".dir   = "master";
  inputs."googleapi-master".owner = "nim-nix-pkgs";
  inputs."googleapi-master".ref   = "master";
  inputs."googleapi-master".repo  = "googleapi";
  inputs."googleapi-master".type  = "github";
  inputs."googleapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-0_1_0".dir   = "0_1_0";
  inputs."googleapi-0_1_0".owner = "nim-nix-pkgs";
  inputs."googleapi-0_1_0".ref   = "master";
  inputs."googleapi-0_1_0".repo  = "googleapi";
  inputs."googleapi-0_1_0".type  = "github";
  inputs."googleapi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-0_1_1".dir   = "0_1_1";
  inputs."googleapi-0_1_1".owner = "nim-nix-pkgs";
  inputs."googleapi-0_1_1".ref   = "master";
  inputs."googleapi-0_1_1".repo  = "googleapi";
  inputs."googleapi-0_1_1".type  = "github";
  inputs."googleapi-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-0_1_2".dir   = "0_1_2";
  inputs."googleapi-0_1_2".owner = "nim-nix-pkgs";
  inputs."googleapi-0_1_2".ref   = "master";
  inputs."googleapi-0_1_2".repo  = "googleapi";
  inputs."googleapi-0_1_2".type  = "github";
  inputs."googleapi-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-0_1_3".dir   = "0_1_3";
  inputs."googleapi-0_1_3".owner = "nim-nix-pkgs";
  inputs."googleapi-0_1_3".ref   = "master";
  inputs."googleapi-0_1_3".repo  = "googleapi";
  inputs."googleapi-0_1_3".type  = "github";
  inputs."googleapi-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-0_1_4".dir   = "0_1_4";
  inputs."googleapi-0_1_4".owner = "nim-nix-pkgs";
  inputs."googleapi-0_1_4".ref   = "master";
  inputs."googleapi-0_1_4".repo  = "googleapi";
  inputs."googleapi-0_1_4".type  = "github";
  inputs."googleapi-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-v0_1_0".dir   = "v0_1_0";
  inputs."googleapi-v0_1_0".owner = "nim-nix-pkgs";
  inputs."googleapi-v0_1_0".ref   = "master";
  inputs."googleapi-v0_1_0".repo  = "googleapi";
  inputs."googleapi-v0_1_0".type  = "github";
  inputs."googleapi-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
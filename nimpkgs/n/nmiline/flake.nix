{
  description = ''Plotting tool using NiGui'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nmiline-master".dir   = "master";
  inputs."nmiline-master".owner = "nim-nix-pkgs";
  inputs."nmiline-master".ref   = "master";
  inputs."nmiline-master".repo  = "nmiline";
  inputs."nmiline-master".type  = "github";
  inputs."nmiline-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmiline-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmiline-v1_0".dir   = "v1_0";
  inputs."nmiline-v1_0".owner = "nim-nix-pkgs";
  inputs."nmiline-v1_0".ref   = "master";
  inputs."nmiline-v1_0".repo  = "nmiline";
  inputs."nmiline-v1_0".type  = "github";
  inputs."nmiline-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmiline-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmiline-v1_0_1".dir   = "v1_0_1";
  inputs."nmiline-v1_0_1".owner = "nim-nix-pkgs";
  inputs."nmiline-v1_0_1".ref   = "master";
  inputs."nmiline-v1_0_1".repo  = "nmiline";
  inputs."nmiline-v1_0_1".type  = "github";
  inputs."nmiline-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmiline-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nmiline-v1_1".dir   = "v1_1";
  inputs."nmiline-v1_1".owner = "nim-nix-pkgs";
  inputs."nmiline-v1_1".ref   = "master";
  inputs."nmiline-v1_1".repo  = "nmiline";
  inputs."nmiline-v1_1".type  = "github";
  inputs."nmiline-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmiline-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
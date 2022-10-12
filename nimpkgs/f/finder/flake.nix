{
  description = ''fs memory zip finder implement in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."finder-master".dir   = "master";
  inputs."finder-master".owner = "nim-nix-pkgs";
  inputs."finder-master".ref   = "master";
  inputs."finder-master".repo  = "finder";
  inputs."finder-master".type  = "github";
  inputs."finder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."finder-v0_1_1".dir   = "v0_1_1";
  inputs."finder-v0_1_1".owner = "nim-nix-pkgs";
  inputs."finder-v0_1_1".ref   = "master";
  inputs."finder-v0_1_1".repo  = "finder";
  inputs."finder-v0_1_1".type  = "github";
  inputs."finder-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."finder-v0_2_0".dir   = "v0_2_0";
  inputs."finder-v0_2_0".owner = "nim-nix-pkgs";
  inputs."finder-v0_2_0".ref   = "master";
  inputs."finder-v0_2_0".repo  = "finder";
  inputs."finder-v0_2_0".type  = "github";
  inputs."finder-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."finder-v0_2_1".dir   = "v0_2_1";
  inputs."finder-v0_2_1".owner = "nim-nix-pkgs";
  inputs."finder-v0_2_1".ref   = "master";
  inputs."finder-v0_2_1".repo  = "finder";
  inputs."finder-v0_2_1".type  = "github";
  inputs."finder-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
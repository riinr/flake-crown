{
  description = ''rena is a tiny fire/directory renaming command.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rena-master".dir   = "master";
  inputs."rena-master".owner = "nim-nix-pkgs";
  inputs."rena-master".ref   = "master";
  inputs."rena-master".repo  = "rena";
  inputs."rena-master".type  = "github";
  inputs."rena-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rena-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rena-v1_0_0".dir   = "v1_0_0";
  inputs."rena-v1_0_0".owner = "nim-nix-pkgs";
  inputs."rena-v1_0_0".ref   = "master";
  inputs."rena-v1_0_0".repo  = "rena";
  inputs."rena-v1_0_0".type  = "github";
  inputs."rena-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rena-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rena-v1_0_1".dir   = "v1_0_1";
  inputs."rena-v1_0_1".owner = "nim-nix-pkgs";
  inputs."rena-v1_0_1".ref   = "master";
  inputs."rena-v1_0_1".repo  = "rena";
  inputs."rena-v1_0_1".type  = "github";
  inputs."rena-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rena-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
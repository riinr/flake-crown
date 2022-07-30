{
  description = ''An image colorizer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dye-master".dir   = "master";
  inputs."dye-master".owner = "nim-nix-pkgs";
  inputs."dye-master".ref   = "master";
  inputs."dye-master".repo  = "dye";
  inputs."dye-master".type  = "github";
  inputs."dye-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dye-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dye-v1_0_0".dir   = "v1_0_0";
  inputs."dye-v1_0_0".owner = "nim-nix-pkgs";
  inputs."dye-v1_0_0".ref   = "master";
  inputs."dye-v1_0_0".repo  = "dye";
  inputs."dye-v1_0_0".type  = "github";
  inputs."dye-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dye-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dye-v1_0_1".dir   = "v1_0_1";
  inputs."dye-v1_0_1".owner = "nim-nix-pkgs";
  inputs."dye-v1_0_1".ref   = "master";
  inputs."dye-v1_0_1".repo  = "dye";
  inputs."dye-v1_0_1".type  = "github";
  inputs."dye-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dye-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dye-v1_1_0".dir   = "v1_1_0";
  inputs."dye-v1_1_0".owner = "nim-nix-pkgs";
  inputs."dye-v1_1_0".ref   = "master";
  inputs."dye-v1_1_0".repo  = "dye";
  inputs."dye-v1_1_0".type  = "github";
  inputs."dye-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dye-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dye-v1_1_1".dir   = "v1_1_1";
  inputs."dye-v1_1_1".owner = "nim-nix-pkgs";
  inputs."dye-v1_1_1".ref   = "master";
  inputs."dye-v1_1_1".repo  = "dye";
  inputs."dye-v1_1_1".type  = "github";
  inputs."dye-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dye-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
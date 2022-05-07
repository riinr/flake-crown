{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eris-trunk".dir   = "trunk";
  inputs."eris-trunk".owner = "nim-nix-pkgs";
  inputs."eris-trunk".ref   = "master";
  inputs."eris-trunk".repo  = "eris";
  inputs."eris-trunk".type  = "github";
  inputs."eris-trunk".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-trunk".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-0_4_0".dir   = "0_4_0";
  inputs."eris-0_4_0".owner = "nim-nix-pkgs";
  inputs."eris-0_4_0".ref   = "master";
  inputs."eris-0_4_0".repo  = "eris";
  inputs."eris-0_4_0".type  = "github";
  inputs."eris-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eris-nim-eris-0_4_0".dir   = "nim-eris-0_4_0";
  inputs."eris-nim-eris-0_4_0".owner = "nim-nix-pkgs";
  inputs."eris-nim-eris-0_4_0".ref   = "master";
  inputs."eris-nim-eris-0_4_0".repo  = "eris";
  inputs."eris-nim-eris-0_4_0".type  = "github";
  inputs."eris-nim-eris-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eris-nim-eris-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
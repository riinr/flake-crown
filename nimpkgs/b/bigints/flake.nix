{
  description = ''Arbitrary-precision integers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bigints-master".dir   = "master";
  inputs."bigints-master".owner = "nim-nix-pkgs";
  inputs."bigints-master".ref   = "master";
  inputs."bigints-master".repo  = "bigints";
  inputs."bigints-master".type  = "github";
  inputs."bigints-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bigints-0_4_4".dir   = "0_4_4";
  inputs."bigints-0_4_4".owner = "nim-nix-pkgs";
  inputs."bigints-0_4_4".ref   = "master";
  inputs."bigints-0_4_4".repo  = "bigints";
  inputs."bigints-0_4_4".type  = "github";
  inputs."bigints-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bigints-0_5_0".dir   = "0_5_0";
  inputs."bigints-0_5_0".owner = "nim-nix-pkgs";
  inputs."bigints-0_5_0".ref   = "master";
  inputs."bigints-0_5_0".repo  = "bigints";
  inputs."bigints-0_5_0".type  = "github";
  inputs."bigints-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bigints-v1_0_0".dir   = "v1_0_0";
  inputs."bigints-v1_0_0".owner = "nim-nix-pkgs";
  inputs."bigints-v1_0_0".ref   = "master";
  inputs."bigints-v1_0_0".repo  = "bigints";
  inputs."bigints-v1_0_0".type  = "github";
  inputs."bigints-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bigints-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
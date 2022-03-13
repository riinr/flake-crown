{
  description = ''Decimal type support based on the IEEE 754 2008 specification.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."decimal128-master".dir   = "master";
  inputs."decimal128-master".owner = "nim-nix-pkgs";
  inputs."decimal128-master".ref   = "master";
  inputs."decimal128-master".repo  = "decimal128";
  inputs."decimal128-master".type  = "github";
  inputs."decimal128-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."decimal128-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."decimal128-v0_1_0".dir   = "v0_1_0";
  inputs."decimal128-v0_1_0".owner = "nim-nix-pkgs";
  inputs."decimal128-v0_1_0".ref   = "master";
  inputs."decimal128-v0_1_0".repo  = "decimal128";
  inputs."decimal128-v0_1_0".type  = "github";
  inputs."decimal128-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."decimal128-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."decimal128-v0_1_1".dir   = "v0_1_1";
  inputs."decimal128-v0_1_1".owner = "nim-nix-pkgs";
  inputs."decimal128-v0_1_1".ref   = "master";
  inputs."decimal128-v0_1_1".repo  = "decimal128";
  inputs."decimal128-v0_1_1".type  = "github";
  inputs."decimal128-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."decimal128-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."decimal128-v0_1_2".dir   = "v0_1_2";
  inputs."decimal128-v0_1_2".owner = "nim-nix-pkgs";
  inputs."decimal128-v0_1_2".ref   = "master";
  inputs."decimal128-v0_1_2".repo  = "decimal128";
  inputs."decimal128-v0_1_2".type  = "github";
  inputs."decimal128-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."decimal128-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
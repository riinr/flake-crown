{
  description = ''Implementation of the Fletcher checksum algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fletcher-master".dir   = "master";
  inputs."fletcher-master".owner = "nim-nix-pkgs";
  inputs."fletcher-master".ref   = "master";
  inputs."fletcher-master".repo  = "fletcher";
  inputs."fletcher-master".type  = "github";
  inputs."fletcher-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fletcher-0_1_0".dir   = "0_1_0";
  inputs."fletcher-0_1_0".owner = "nim-nix-pkgs";
  inputs."fletcher-0_1_0".ref   = "master";
  inputs."fletcher-0_1_0".repo  = "fletcher";
  inputs."fletcher-0_1_0".type  = "github";
  inputs."fletcher-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fletcher-0_2_2".dir   = "0_2_2";
  inputs."fletcher-0_2_2".owner = "nim-nix-pkgs";
  inputs."fletcher-0_2_2".ref   = "master";
  inputs."fletcher-0_2_2".repo  = "fletcher";
  inputs."fletcher-0_2_2".type  = "github";
  inputs."fletcher-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fletcher-0_3_0".dir   = "0_3_0";
  inputs."fletcher-0_3_0".owner = "nim-nix-pkgs";
  inputs."fletcher-0_3_0".ref   = "master";
  inputs."fletcher-0_3_0".repo  = "fletcher";
  inputs."fletcher-0_3_0".type  = "github";
  inputs."fletcher-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fletcher-0_3_1".dir   = "0_3_1";
  inputs."fletcher-0_3_1".owner = "nim-nix-pkgs";
  inputs."fletcher-0_3_1".ref   = "master";
  inputs."fletcher-0_3_1".repo  = "fletcher";
  inputs."fletcher-0_3_1".type  = "github";
  inputs."fletcher-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fletcher-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
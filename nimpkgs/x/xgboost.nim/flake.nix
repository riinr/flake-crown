{
  description = ''Nim wrapper of libxgboost'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xgboost-master".dir   = "master";
  inputs."xgboost-master".owner = "nim-nix-pkgs";
  inputs."xgboost-master".ref   = "master";
  inputs."xgboost-master".repo  = "xgboost";
  inputs."xgboost-master".type  = "github";
  inputs."xgboost-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xgboost-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xgboost-0_1_0".dir   = "0_1_0";
  inputs."xgboost-0_1_0".owner = "nim-nix-pkgs";
  inputs."xgboost-0_1_0".ref   = "master";
  inputs."xgboost-0_1_0".repo  = "xgboost";
  inputs."xgboost-0_1_0".type  = "github";
  inputs."xgboost-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xgboost-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xgboost-0_1_1".dir   = "0_1_1";
  inputs."xgboost-0_1_1".owner = "nim-nix-pkgs";
  inputs."xgboost-0_1_1".ref   = "master";
  inputs."xgboost-0_1_1".repo  = "xgboost";
  inputs."xgboost-0_1_1".type  = "github";
  inputs."xgboost-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xgboost-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xgboost-0_1_2".dir   = "0_1_2";
  inputs."xgboost-0_1_2".owner = "nim-nix-pkgs";
  inputs."xgboost-0_1_2".ref   = "master";
  inputs."xgboost-0_1_2".repo  = "xgboost";
  inputs."xgboost-0_1_2".type  = "github";
  inputs."xgboost-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xgboost-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xgboost-0_1_3".dir   = "0_1_3";
  inputs."xgboost-0_1_3".owner = "nim-nix-pkgs";
  inputs."xgboost-0_1_3".ref   = "master";
  inputs."xgboost-0_1_3".repo  = "xgboost";
  inputs."xgboost-0_1_3".type  = "github";
  inputs."xgboost-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xgboost-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
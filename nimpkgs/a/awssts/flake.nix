{
  description = ''AWS Security Token Service API in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."awssts-main".dir   = "main";
  inputs."awssts-main".owner = "nim-nix-pkgs";
  inputs."awssts-main".ref   = "master";
  inputs."awssts-main".repo  = "awssts";
  inputs."awssts-main".type  = "github";
  inputs."awssts-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awssts-v1_0_0".dir   = "v1_0_0";
  inputs."awssts-v1_0_0".owner = "nim-nix-pkgs";
  inputs."awssts-v1_0_0".ref   = "master";
  inputs."awssts-v1_0_0".repo  = "awssts";
  inputs."awssts-v1_0_0".type  = "github";
  inputs."awssts-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awssts-v1_0_1".dir   = "v1_0_1";
  inputs."awssts-v1_0_1".owner = "nim-nix-pkgs";
  inputs."awssts-v1_0_1".ref   = "master";
  inputs."awssts-v1_0_1".repo  = "awssts";
  inputs."awssts-v1_0_1".type  = "github";
  inputs."awssts-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awssts-v1_0_2".dir   = "v1_0_2";
  inputs."awssts-v1_0_2".owner = "nim-nix-pkgs";
  inputs."awssts-v1_0_2".ref   = "master";
  inputs."awssts-v1_0_2".repo  = "awssts";
  inputs."awssts-v1_0_2".type  = "github";
  inputs."awssts-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
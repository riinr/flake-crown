{
  description = ''AWS Security Token Service API in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."awssts-main".url = "path:./main";
  inputs."awssts-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awssts-v1_0_0".url = "path:./v1_0_0";
  inputs."awssts-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awssts-v1_0_1".url = "path:./v1_0_1";
  inputs."awssts-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awssts-v1_0_2".url = "path:./v1_0_2";
  inputs."awssts-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awssts-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
{
  description = ''Amazon Simple Storage Service (AWS S3) basic API support.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."awss3-main".url = "path:./main";
  inputs."awss3-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awss3-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awss3-v1_0_0".url = "path:./v1_0_0";
  inputs."awss3-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awss3-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awss3-v1_0_1".url = "path:./v1_0_1";
  inputs."awss3-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awss3-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awss3-v1_0_2".url = "path:./v1_0_2";
  inputs."awss3-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awss3-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."awss3-v1_0_3".url = "path:./v1_0_3";
  inputs."awss3-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."awss3-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
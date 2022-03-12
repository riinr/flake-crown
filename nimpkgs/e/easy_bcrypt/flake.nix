{
  description = ''A simple wrapper providing a convenient reentrant interface for the bcrypt password hashing algorithm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."easy_bcrypt-master".url = "path:./master";
  inputs."easy_bcrypt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-1_0_0".url = "path:./1_0_0";
  inputs."easy_bcrypt-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-1_0_1".url = "path:./1_0_1";
  inputs."easy_bcrypt-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-2_0_0".url = "path:./2_0_0";
  inputs."easy_bcrypt-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-2_0_1".url = "path:./2_0_1";
  inputs."easy_bcrypt-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-2_0_2".url = "path:./2_0_2";
  inputs."easy_bcrypt-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."easy_bcrypt-2_0_3".url = "path:./2_0_3";
  inputs."easy_bcrypt-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."easy_bcrypt-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
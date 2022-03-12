{
  description = ''A library for quickly and easily encrypting strings & files. User-friendly and highly compatible.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."quickcrypt-master".url = "path:./master";
  inputs."quickcrypt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickcrypt-0_1_0".url = "path:./0_1_0";
  inputs."quickcrypt-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickcrypt-0_1_1".url = "path:./0_1_1";
  inputs."quickcrypt-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickcrypt-0_1_2".url = "path:./0_1_2";
  inputs."quickcrypt-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickcrypt-0_1_3".url = "path:./0_1_3";
  inputs."quickcrypt-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."quickcrypt-0_1_4".url = "path:./0_1_4";
  inputs."quickcrypt-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickcrypt-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
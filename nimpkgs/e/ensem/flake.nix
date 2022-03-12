{
  description = ''Support for ensemble file format and arithmetic using jackknife/bootstrap propagation of errors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ensem-master".url = "path:./master";
  inputs."ensem-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_0_0".url = "path:./v1_0_0";
  inputs."ensem-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_1_0".url = "path:./v1_1_0";
  inputs."ensem-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_2_1".url = "path:./v1_2_1";
  inputs."ensem-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_2_2".url = "path:./v1_2_2";
  inputs."ensem-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_3_0".url = "path:./v1_3_0";
  inputs."ensem-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_3_1".url = "path:./v1_3_1";
  inputs."ensem-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_3_2".url = "path:./v1_3_2";
  inputs."ensem-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ensem-v1_4_0".url = "path:./v1_4_0";
  inputs."ensem-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ensem-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Bindings for the C++ Standard Template Library (STL)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cppstl-master".url = "path:./master";
  inputs."cppstl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_2_2".url = "path:./v0_2_2";
  inputs."cppstl-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_3_0".url = "path:./v0_3_0";
  inputs."cppstl-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_3_1".url = "path:./v0_3_1";
  inputs."cppstl-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_4_0".url = "path:./v0_4_0";
  inputs."cppstl-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_4_1".url = "path:./v0_4_1";
  inputs."cppstl-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cppstl-v0_5_0".url = "path:./v0_5_0";
  inputs."cppstl-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cppstl-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
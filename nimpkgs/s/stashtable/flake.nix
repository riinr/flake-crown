{
  description = ''Concurrent hash table'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stashtable-master".url = "path:./master";
  inputs."stashtable-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stashtable-1_0_0".url = "path:./1_0_0";
  inputs."stashtable-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stashtable-1_1_0".url = "path:./1_1_0";
  inputs."stashtable-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stashtable-1_2_0".url = "path:./1_2_0";
  inputs."stashtable-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stashtable-1_2_1".url = "path:./1_2_1";
  inputs."stashtable-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
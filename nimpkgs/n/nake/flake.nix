{
  description = ''make-like for Nim. Describe your builds as tasks!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nake-master".url = "path:./master";
  inputs."nake-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-1_9".url = "path:./1_9";
  inputs."nake-1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-1_9_1".url = "path:./1_9_1";
  inputs."nake-1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-1_9_2".url = "path:./1_9_2";
  inputs."nake-1_9_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-1_9_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-1_9_3".url = "path:./1_9_3";
  inputs."nake-1_9_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-1_9_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-1_9_4".url = "path:./1_9_4";
  inputs."nake-1_9_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-1_9_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_0".url = "path:./v1_0";
  inputs."nake-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_1".url = "path:./v1_1";
  inputs."nake-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_2".url = "path:./v1_2";
  inputs."nake-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_4".url = "path:./v1_4";
  inputs."nake-v1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_6".url = "path:./v1_6";
  inputs."nake-v1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake-v1_8".url = "path:./v1_8";
  inputs."nake-v1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake-v1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
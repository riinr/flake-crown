{
  description = ''De/serialization library for Nim '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."deser-master".url = "path:./master";
  inputs."deser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_0".url = "path:./v0_1_0";
  inputs."deser-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_1".url = "path:./v0_1_1";
  inputs."deser-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_1-alpha_1".url = "path:./v0_1_1-alpha_1";
  inputs."deser-v0_1_1-alpha_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_1-alpha_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_1-alpha_2".url = "path:./v0_1_1-alpha_2";
  inputs."deser-v0_1_1-alpha_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_1-alpha_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_2".url = "path:./v0_1_2";
  inputs."deser-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_3".url = "path:./v0_1_3";
  inputs."deser-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_4".url = "path:./v0_1_4";
  inputs."deser-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_5".url = "path:./v0_1_5";
  inputs."deser-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser-v0_1_7".url = "path:./v0_1_7";
  inputs."deser-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
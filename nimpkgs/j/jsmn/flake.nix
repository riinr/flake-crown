{
  description = ''Jsmn - a world fastest JSON parser - in pure Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jsmn-master".url = "path:./master";
  inputs."jsmn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_0".url = "path:./0_1_0";
  inputs."jsmn-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_1".url = "path:./0_1_1";
  inputs."jsmn-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_2".url = "path:./0_1_2";
  inputs."jsmn-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_3".url = "path:./0_1_3";
  inputs."jsmn-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_4".url = "path:./0_1_4";
  inputs."jsmn-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_5".url = "path:./0_1_5";
  inputs."jsmn-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_1_6".url = "path:./0_1_6";
  inputs."jsmn-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsmn-0_2".url = "path:./0_2";
  inputs."jsmn-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
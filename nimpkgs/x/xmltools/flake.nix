{
  description = ''High level xml library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xmltools-master".url = "path:./master";
  inputs."xmltools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_0_1".url = "path:./v0_0_1";
  inputs."xmltools-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_0_2".url = "path:./v0_0_2";
  inputs."xmltools-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_0_3".url = "path:./v0_0_3";
  inputs."xmltools-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_0".url = "path:./v0_1_0";
  inputs."xmltools-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_1".url = "path:./v0_1_1";
  inputs."xmltools-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_2".url = "path:./v0_1_2";
  inputs."xmltools-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_3".url = "path:./v0_1_3";
  inputs."xmltools-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_4".url = "path:./v0_1_4";
  inputs."xmltools-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xmltools-v0_1_5".url = "path:./v0_1_5";
  inputs."xmltools-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xmltools-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
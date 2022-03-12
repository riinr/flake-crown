{
  description = ''Swift-like unicode string handling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."strunicode-master".url = "path:./master";
  inputs."strunicode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_1".url = "path:./v0_1";
  inputs."strunicode-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_2_0".url = "path:./v0_2_0";
  inputs."strunicode-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_3_0".url = "path:./v0_3_0";
  inputs."strunicode-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_4_0".url = "path:./v0_4_0";
  inputs."strunicode-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_5_0".url = "path:./v0_5_0";
  inputs."strunicode-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_6_0".url = "path:./v0_6_0";
  inputs."strunicode-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_6_1".url = "path:./v0_6_1";
  inputs."strunicode-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_7_0".url = "path:./v0_7_0";
  inputs."strunicode-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_7_1".url = "path:./v0_7_1";
  inputs."strunicode-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."strunicode-v0_8_0".url = "path:./v0_8_0";
  inputs."strunicode-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strunicode-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
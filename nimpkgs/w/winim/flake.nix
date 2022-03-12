{
  description = ''Nim's Windows API and COM Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."winim-master".url = "path:./master";
  inputs."winim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_6_0".url = "path:./3_6_0";
  inputs."winim-3_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_6_1".url = "path:./3_6_1";
  inputs."winim-3_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_7_0".url = "path:./3_7_0";
  inputs."winim-3_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_7_1".url = "path:./3_7_1";
  inputs."winim-3_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_7_2".url = "path:./3_7_2";
  inputs."winim-3_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."winim-3_8_0".url = "path:./3_8_0";
  inputs."winim-3_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim-3_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
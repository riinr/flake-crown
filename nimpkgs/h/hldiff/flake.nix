{
  description = ''A highlighter for diff -u-like output & port of Python difflib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hldiff-master".url = "path:./master";
  inputs."hldiff-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_1".url = "path:./v0_1";
  inputs."hldiff-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_2".url = "path:./v0_2";
  inputs."hldiff-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_3".url = "path:./v0_3";
  inputs."hldiff-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_4".url = "path:./v0_4";
  inputs."hldiff-v0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_5".url = "path:./v0_5";
  inputs."hldiff-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_6".url = "path:./v0_6";
  inputs."hldiff-v0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hldiff-v0_7".url = "path:./v0_7";
  inputs."hldiff-v0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hldiff-v0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
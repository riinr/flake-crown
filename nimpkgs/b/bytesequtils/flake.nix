{
  description = ''Nim package to manipulate buffer as either seq[byte] or string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bytesequtils-main".url = "path:./main";
  inputs."bytesequtils-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_0_0".url = "path:./v1_0_0";
  inputs."bytesequtils-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_1_0".url = "path:./v1_1_0";
  inputs."bytesequtils-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_1_1".url = "path:./v1_1_1";
  inputs."bytesequtils-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_1_2".url = "path:./v1_1_2";
  inputs."bytesequtils-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_1_3".url = "path:./v1_1_3";
  inputs."bytesequtils-v1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bytesequtils-v1_2_0".url = "path:./v1_2_0";
  inputs."bytesequtils-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bytesequtils-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
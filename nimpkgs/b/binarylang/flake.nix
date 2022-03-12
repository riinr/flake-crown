{
  description = ''Binary parser/encoder DSL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."binarylang-main".url = "path:./main";
  inputs."binarylang-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_2_0".url = "path:./v0_2_0";
  inputs."binarylang-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_3_0".url = "path:./v0_3_0";
  inputs."binarylang-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_3_1".url = "path:./v0_3_1";
  inputs."binarylang-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_3_2".url = "path:./v0_3_2";
  inputs."binarylang-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_5_0".url = "path:./v0_5_0";
  inputs."binarylang-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binarylang-v0_5_1".url = "path:./v0_5_1";
  inputs."binarylang-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binarylang-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
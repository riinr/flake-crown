{
  description = ''ABI Encoding for Ethereum contracts'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."contractabi-main".url = "path:./main";
  inputs."contractabi-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_1_0".url = "path:./0_1_0";
  inputs."contractabi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_1_1".url = "path:./0_1_1";
  inputs."contractabi-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_2_0".url = "path:./0_2_0";
  inputs."contractabi-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_3_0".url = "path:./0_3_0";
  inputs."contractabi-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_4_0".url = "path:./0_4_0";
  inputs."contractabi-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_4_1".url = "path:./0_4_1";
  inputs."contractabi-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_4_2".url = "path:./0_4_2";
  inputs."contractabi-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
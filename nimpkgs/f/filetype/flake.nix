{
  description = ''Small and dependency free Nim package to infer file and MIME type checking the magic numbers signature.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."filetype-main".url = "path:./main";
  inputs."filetype-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_1_0".url = "path:./v0_1_0";
  inputs."filetype-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_2_0".url = "path:./v0_2_0";
  inputs."filetype-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_3_0".url = "path:./v0_3_0";
  inputs."filetype-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_4_0".url = "path:./v0_4_0";
  inputs."filetype-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_5_0".url = "path:./v0_5_0";
  inputs."filetype-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_5_1".url = "path:./v0_5_1";
  inputs."filetype-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_6_0".url = "path:./v0_6_0";
  inputs."filetype-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_7_0".url = "path:./v0_7_0";
  inputs."filetype-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_7_1".url = "path:./v0_7_1";
  inputs."filetype-v0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_8_0".url = "path:./v0_8_0";
  inputs."filetype-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_8_1".url = "path:./v0_8_1";
  inputs."filetype-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."filetype-v0_9_0".url = "path:./v0_9_0";
  inputs."filetype-v0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."filetype-v0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
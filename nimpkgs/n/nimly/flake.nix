{
  description = ''Lexer Generator and Parser Generator as a Macro Library in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimly-master".url = "path:./master";
  inputs."nimly-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_0_0".url = "path:./v0_0_0";
  inputs."nimly-v0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_1_0".url = "path:./v0_1_0";
  inputs."nimly-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_2_0".url = "path:./v0_2_0";
  inputs."nimly-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_2_1".url = "path:./v0_2_1";
  inputs."nimly-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_3_0".url = "path:./v0_3_0";
  inputs."nimly-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_4_0".url = "path:./v0_4_0";
  inputs."nimly-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_4_1".url = "path:./v0_4_1";
  inputs."nimly-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_4_2".url = "path:./v0_4_2";
  inputs."nimly-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_5_0".url = "path:./v0_5_0";
  inputs."nimly-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_5_1".url = "path:./v0_5_1";
  inputs."nimly-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_6_0".url = "path:./v0_6_0";
  inputs."nimly-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_6_1".url = "path:./v0_6_1";
  inputs."nimly-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimly-v0_7_0".url = "path:./v0_7_0";
  inputs."nimly-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimly-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
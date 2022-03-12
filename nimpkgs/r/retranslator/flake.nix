{
  description = ''Transformer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."retranslator-master".url = "path:./master";
  inputs."retranslator-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_3".url = "path:./0_0_3";
  inputs."retranslator-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_4".url = "path:./0_0_4";
  inputs."retranslator-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_5".url = "path:./0_0_5";
  inputs."retranslator-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_6".url = "path:./0_0_6";
  inputs."retranslator-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_7".url = "path:./0_0_7";
  inputs."retranslator-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_8".url = "path:./0_0_8";
  inputs."retranslator-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_1_0".url = "path:./0_1_0";
  inputs."retranslator-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_2_0".url = "path:./0_2_0";
  inputs."retranslator-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_2_1".url = "path:./0_2_1";
  inputs."retranslator-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_2_2".url = "path:./0_2_2";
  inputs."retranslator-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_3_0".url = "path:./0_3_0";
  inputs."retranslator-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_3_1".url = "path:./0_3_1";
  inputs."retranslator-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_3_2".url = "path:./0_3_2";
  inputs."retranslator-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_3_3".url = "path:./0_3_3";
  inputs."retranslator-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_3_4".url = "path:./0_3_4";
  inputs."retranslator-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
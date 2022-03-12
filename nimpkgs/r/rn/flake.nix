{
  description = ''minimal, performant mass file renamer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rn-master".url = "path:./master";
  inputs."rn-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_1".url = "path:./v0_0_1";
  inputs."rn-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_2".url = "path:./v0_0_2";
  inputs."rn-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_3".url = "path:./v0_0_3";
  inputs."rn-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_4".url = "path:./v0_0_4";
  inputs."rn-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_5".url = "path:./v0_0_5";
  inputs."rn-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_6".url = "path:./v0_0_6";
  inputs."rn-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_7".url = "path:./v0_0_7";
  inputs."rn-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_8".url = "path:./v0_0_8";
  inputs."rn-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_0_9".url = "path:./v0_0_9";
  inputs."rn-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_0".url = "path:./v0_1_0";
  inputs."rn-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_1".url = "path:./v0_1_1";
  inputs."rn-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_2".url = "path:./v0_1_2";
  inputs."rn-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_3".url = "path:./v0_1_3";
  inputs."rn-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_4".url = "path:./v0_1_4";
  inputs."rn-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_5".url = "path:./v0_1_5";
  inputs."rn-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_6".url = "path:./v0_1_6";
  inputs."rn-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_7".url = "path:./v0_1_7";
  inputs."rn-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_8".url = "path:./v0_1_8";
  inputs."rn-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_1_9".url = "path:./v0_1_9";
  inputs."rn-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_2_0".url = "path:./v0_2_0";
  inputs."rn-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_2_1".url = "path:./v0_2_1";
  inputs."rn-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rn-v0_2_2".url = "path:./v0_2_2";
  inputs."rn-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rn-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
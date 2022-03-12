{
  description = ''Static website generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."baker-master".url = "path:./master";
  inputs."baker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v1_6".url = "path:./v1_6";
  inputs."baker-v1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v1_8".url = "path:./v1_8";
  inputs."baker-v1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v1_8_2".url = "path:./v1_8_2";
  inputs."baker-v1_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v1_8_3".url = "path:./v1_8_3";
  inputs."baker-v1_8_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v1_8_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_0".url = "path:./v2_0_0";
  inputs."baker-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_1".url = "path:./v2_0_1";
  inputs."baker-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_2".url = "path:./v2_0_2";
  inputs."baker-v2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_3".url = "path:./v2_0_3";
  inputs."baker-v2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_4".url = "path:./v2_0_4";
  inputs."baker-v2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_5".url = "path:./v2_0_5";
  inputs."baker-v2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_7".url = "path:./v2_0_7";
  inputs."baker-v2_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."baker-v2_0_9".url = "path:./v2_0_9";
  inputs."baker-v2_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."baker-v2_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
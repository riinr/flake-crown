{
  description = ''A wrapper for the vk.com API (russian social network)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vkapi-master".url = "path:./master";
  inputs."vkapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v0_1_0".url = "path:./v0_1_0";
  inputs."vkapi-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_0_0".url = "path:./v1_0_0";
  inputs."vkapi-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_1_0".url = "path:./v1_1_0";
  inputs."vkapi-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_2_0".url = "path:./v1_2_0";
  inputs."vkapi-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_2_1".url = "path:./v1_2_1";
  inputs."vkapi-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_3_0".url = "path:./v1_3_0";
  inputs."vkapi-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_3_1".url = "path:./v1_3_1";
  inputs."vkapi-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
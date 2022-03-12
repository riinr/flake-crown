{
  description = ''Port of c++ glm library with shader-like syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."glm-master".url = "path:./master";
  inputs."glm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm-v1_0_0".url = "path:./v1_0_0";
  inputs."glm-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm-v1_0_1".url = "path:./v1_0_1";
  inputs."glm-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm-v1_0_2".url = "path:./v1_0_2";
  inputs."glm-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm-v1_1_0".url = "path:./v1_1_0";
  inputs."glm-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm-v1_1_1".url = "path:./v1_1_1";
  inputs."glm-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
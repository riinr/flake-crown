{
  description = ''Nim port of the OpenGL Mathematics (GLM) library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."glm-master".dir   = "master";
  inputs."glm-master".owner = "nim-nix-pkgs";
  inputs."glm-master".ref   = "master";
  inputs."glm-master".repo  = "glm";
  inputs."glm-master".type  = "github";
  inputs."glm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm-v1_0_0".dir   = "v1_0_0";
  inputs."glm-v1_0_0".owner = "nim-nix-pkgs";
  inputs."glm-v1_0_0".ref   = "master";
  inputs."glm-v1_0_0".repo  = "glm";
  inputs."glm-v1_0_0".type  = "github";
  inputs."glm-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm-v1_0_1".dir   = "v1_0_1";
  inputs."glm-v1_0_1".owner = "nim-nix-pkgs";
  inputs."glm-v1_0_1".ref   = "master";
  inputs."glm-v1_0_1".repo  = "glm";
  inputs."glm-v1_0_1".type  = "github";
  inputs."glm-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm-v1_0_2".dir   = "v1_0_2";
  inputs."glm-v1_0_2".owner = "nim-nix-pkgs";
  inputs."glm-v1_0_2".ref   = "master";
  inputs."glm-v1_0_2".repo  = "glm";
  inputs."glm-v1_0_2".type  = "github";
  inputs."glm-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm-v1_1_0".dir   = "v1_1_0";
  inputs."glm-v1_1_0".owner = "nim-nix-pkgs";
  inputs."glm-v1_1_0".ref   = "master";
  inputs."glm-v1_1_0".repo  = "glm";
  inputs."glm-v1_1_0".type  = "github";
  inputs."glm-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm-v1_1_1".dir   = "v1_1_1";
  inputs."glm-v1_1_1".owner = "nim-nix-pkgs";
  inputs."glm-v1_1_1".ref   = "master";
  inputs."glm-v1_1_1".repo  = "glm";
  inputs."glm-v1_1_1".type  = "github";
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
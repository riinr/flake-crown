{
  description = ''A wrapper for the vk.com API (russian social network)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vkapi-master".dir   = "master";
  inputs."vkapi-master".owner = "nim-nix-pkgs";
  inputs."vkapi-master".ref   = "master";
  inputs."vkapi-master".repo  = "vkapi";
  inputs."vkapi-master".type  = "github";
  inputs."vkapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v0_1_0".dir   = "v0_1_0";
  inputs."vkapi-v0_1_0".owner = "nim-nix-pkgs";
  inputs."vkapi-v0_1_0".ref   = "master";
  inputs."vkapi-v0_1_0".repo  = "vkapi";
  inputs."vkapi-v0_1_0".type  = "github";
  inputs."vkapi-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_0_0".dir   = "v1_0_0";
  inputs."vkapi-v1_0_0".owner = "nim-nix-pkgs";
  inputs."vkapi-v1_0_0".ref   = "master";
  inputs."vkapi-v1_0_0".repo  = "vkapi";
  inputs."vkapi-v1_0_0".type  = "github";
  inputs."vkapi-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_1_0".dir   = "v1_1_0";
  inputs."vkapi-v1_1_0".owner = "nim-nix-pkgs";
  inputs."vkapi-v1_1_0".ref   = "master";
  inputs."vkapi-v1_1_0".repo  = "vkapi";
  inputs."vkapi-v1_1_0".type  = "github";
  inputs."vkapi-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_2_0".dir   = "v1_2_0";
  inputs."vkapi-v1_2_0".owner = "nim-nix-pkgs";
  inputs."vkapi-v1_2_0".ref   = "master";
  inputs."vkapi-v1_2_0".repo  = "vkapi";
  inputs."vkapi-v1_2_0".type  = "github";
  inputs."vkapi-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_2_1".dir   = "v1_2_1";
  inputs."vkapi-v1_2_1".owner = "nim-nix-pkgs";
  inputs."vkapi-v1_2_1".ref   = "master";
  inputs."vkapi-v1_2_1".repo  = "vkapi";
  inputs."vkapi-v1_2_1".type  = "github";
  inputs."vkapi-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_3_0".dir   = "v1_3_0";
  inputs."vkapi-v1_3_0".owner = "nim-nix-pkgs";
  inputs."vkapi-v1_3_0".ref   = "master";
  inputs."vkapi-v1_3_0".repo  = "vkapi";
  inputs."vkapi-v1_3_0".type  = "github";
  inputs."vkapi-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vkapi-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vkapi-v1_3_1".dir   = "v1_3_1";
  inputs."vkapi-v1_3_1".owner = "nim-nix-pkgs";
  inputs."vkapi-v1_3_1".ref   = "master";
  inputs."vkapi-v1_3_1".repo  = "vkapi";
  inputs."vkapi-v1_3_1".type  = "github";
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
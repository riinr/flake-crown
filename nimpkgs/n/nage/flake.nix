{
  description = ''Not Another Game Engine; CLI text adventure engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nage-main".dir   = "main";
  inputs."nage-main".owner = "nim-nix-pkgs";
  inputs."nage-main".ref   = "master";
  inputs."nage-main".repo  = "nage";
  inputs."nage-main".type  = "github";
  inputs."nage-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nage-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nage-master".dir   = "master";
  inputs."nage-master".owner = "nim-nix-pkgs";
  inputs."nage-master".ref   = "master";
  inputs."nage-master".repo  = "nage";
  inputs."nage-master".type  = "github";
  inputs."nage-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nage-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nage-v1_1_0".dir   = "v1_1_0";
  inputs."nage-v1_1_0".owner = "nim-nix-pkgs";
  inputs."nage-v1_1_0".ref   = "master";
  inputs."nage-v1_1_0".repo  = "nage";
  inputs."nage-v1_1_0".type  = "github";
  inputs."nage-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nage-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nage-v1_2_0".dir   = "v1_2_0";
  inputs."nage-v1_2_0".owner = "nim-nix-pkgs";
  inputs."nage-v1_2_0".ref   = "master";
  inputs."nage-v1_2_0".repo  = "nage";
  inputs."nage-v1_2_0".type  = "github";
  inputs."nage-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nage-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nage-v1_2_1".dir   = "v1_2_1";
  inputs."nage-v1_2_1".owner = "nim-nix-pkgs";
  inputs."nage-v1_2_1".ref   = "master";
  inputs."nage-v1_2_1".repo  = "nage";
  inputs."nage-v1_2_1".type  = "github";
  inputs."nage-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nage-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nage-v1_3_0".dir   = "v1_3_0";
  inputs."nage-v1_3_0".owner = "nim-nix-pkgs";
  inputs."nage-v1_3_0".ref   = "master";
  inputs."nage-v1_3_0".repo  = "nage";
  inputs."nage-v1_3_0".type  = "github";
  inputs."nage-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nage-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nage-v1_4_0".dir   = "v1_4_0";
  inputs."nage-v1_4_0".owner = "nim-nix-pkgs";
  inputs."nage-v1_4_0".ref   = "master";
  inputs."nage-v1_4_0".repo  = "nage";
  inputs."nage-v1_4_0".type  = "github";
  inputs."nage-v1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nage-v1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
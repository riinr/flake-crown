{
  description = ''Indie assembler/linker for Android's Dalvik VM .dex & .apk files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dali-master".dir   = "master";
  inputs."dali-master".owner = "nim-nix-pkgs";
  inputs."dali-master".ref   = "master";
  inputs."dali-master".repo  = "dali";
  inputs."dali-master".type  = "github";
  inputs."dali-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dali-v0_1_0".dir   = "v0_1_0";
  inputs."dali-v0_1_0".owner = "nim-nix-pkgs";
  inputs."dali-v0_1_0".ref   = "master";
  inputs."dali-v0_1_0".repo  = "dali";
  inputs."dali-v0_1_0".type  = "github";
  inputs."dali-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dali-v0_2_0".dir   = "v0_2_0";
  inputs."dali-v0_2_0".owner = "nim-nix-pkgs";
  inputs."dali-v0_2_0".ref   = "master";
  inputs."dali-v0_2_0".repo  = "dali";
  inputs."dali-v0_2_0".type  = "github";
  inputs."dali-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dali-v0_2_1".dir   = "v0_2_1";
  inputs."dali-v0_2_1".owner = "nim-nix-pkgs";
  inputs."dali-v0_2_1".ref   = "master";
  inputs."dali-v0_2_1".repo  = "dali";
  inputs."dali-v0_2_1".type  = "github";
  inputs."dali-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dali-v0_2_2".dir   = "v0_2_2";
  inputs."dali-v0_2_2".owner = "nim-nix-pkgs";
  inputs."dali-v0_2_2".ref   = "master";
  inputs."dali-v0_2_2".repo  = "dali";
  inputs."dali-v0_2_2".type  = "github";
  inputs."dali-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dali-v0_2_3".dir   = "v0_2_3";
  inputs."dali-v0_2_3".owner = "nim-nix-pkgs";
  inputs."dali-v0_2_3".ref   = "master";
  inputs."dali-v0_2_3".repo  = "dali";
  inputs."dali-v0_2_3".type  = "github";
  inputs."dali-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dali-v0_3_0".dir   = "v0_3_0";
  inputs."dali-v0_3_0".owner = "nim-nix-pkgs";
  inputs."dali-v0_3_0".ref   = "master";
  inputs."dali-v0_3_0".repo  = "dali";
  inputs."dali-v0_3_0".type  = "github";
  inputs."dali-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dali-v0_4_0".dir   = "v0_4_0";
  inputs."dali-v0_4_0".owner = "nim-nix-pkgs";
  inputs."dali-v0_4_0".ref   = "master";
  inputs."dali-v0_4_0".repo  = "dali";
  inputs."dali-v0_4_0".type  = "github";
  inputs."dali-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dali-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = '' Nitro state channels in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nitro-main".dir   = "main";
  inputs."nitro-main".owner = "nim-nix-pkgs";
  inputs."nitro-main".ref   = "master";
  inputs."nitro-main".repo  = "nitro";
  inputs."nitro-main".type  = "github";
  inputs."nitro-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nitro-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nitro-0_1_0".dir   = "0_1_0";
  inputs."nitro-0_1_0".owner = "nim-nix-pkgs";
  inputs."nitro-0_1_0".ref   = "master";
  inputs."nitro-0_1_0".repo  = "nitro";
  inputs."nitro-0_1_0".type  = "github";
  inputs."nitro-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nitro-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nitro-0_2_0".dir   = "0_2_0";
  inputs."nitro-0_2_0".owner = "nim-nix-pkgs";
  inputs."nitro-0_2_0".ref   = "master";
  inputs."nitro-0_2_0".repo  = "nitro";
  inputs."nitro-0_2_0".type  = "github";
  inputs."nitro-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nitro-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nitro-0_3_0".dir   = "0_3_0";
  inputs."nitro-0_3_0".owner = "nim-nix-pkgs";
  inputs."nitro-0_3_0".ref   = "master";
  inputs."nitro-0_3_0".repo  = "nitro";
  inputs."nitro-0_3_0".type  = "github";
  inputs."nitro-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nitro-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nitro-0_4_0".dir   = "0_4_0";
  inputs."nitro-0_4_0".owner = "nim-nix-pkgs";
  inputs."nitro-0_4_0".ref   = "master";
  inputs."nitro-0_4_0".repo  = "nitro";
  inputs."nitro-0_4_0".type  = "github";
  inputs."nitro-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nitro-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nitro-0_5_0".dir   = "0_5_0";
  inputs."nitro-0_5_0".owner = "nim-nix-pkgs";
  inputs."nitro-0_5_0".ref   = "master";
  inputs."nitro-0_5_0".repo  = "nitro";
  inputs."nitro-0_5_0".type  = "github";
  inputs."nitro-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nitro-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nitro-0_5_1".dir   = "0_5_1";
  inputs."nitro-0_5_1".owner = "nim-nix-pkgs";
  inputs."nitro-0_5_1".ref   = "master";
  inputs."nitro-0_5_1".repo  = "nitro";
  inputs."nitro-0_5_1".type  = "github";
  inputs."nitro-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nitro-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
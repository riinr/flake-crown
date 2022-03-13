{
  description = ''Implement dynamic dispatch through vtable, should works for dynlib.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vtable-v0_1_0".dir   = "v0_1_0";
  inputs."vtable-v0_1_0".owner = "nim-nix-pkgs";
  inputs."vtable-v0_1_0".ref   = "master";
  inputs."vtable-v0_1_0".repo  = "vtable";
  inputs."vtable-v0_1_0".type  = "github";
  inputs."vtable-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vtable-v0_1_1".dir   = "v0_1_1";
  inputs."vtable-v0_1_1".owner = "nim-nix-pkgs";
  inputs."vtable-v0_1_1".ref   = "master";
  inputs."vtable-v0_1_1".repo  = "vtable";
  inputs."vtable-v0_1_1".type  = "github";
  inputs."vtable-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vtable-v0_1_2".dir   = "v0_1_2";
  inputs."vtable-v0_1_2".owner = "nim-nix-pkgs";
  inputs."vtable-v0_1_2".ref   = "master";
  inputs."vtable-v0_1_2".repo  = "vtable";
  inputs."vtable-v0_1_2".type  = "github";
  inputs."vtable-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vtable-v0_2_0".dir   = "v0_2_0";
  inputs."vtable-v0_2_0".owner = "nim-nix-pkgs";
  inputs."vtable-v0_2_0".ref   = "master";
  inputs."vtable-v0_2_0".repo  = "vtable";
  inputs."vtable-v0_2_0".type  = "github";
  inputs."vtable-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vtable-v0_2_1".dir   = "v0_2_1";
  inputs."vtable-v0_2_1".owner = "nim-nix-pkgs";
  inputs."vtable-v0_2_1".ref   = "master";
  inputs."vtable-v0_2_1".repo  = "vtable";
  inputs."vtable-v0_2_1".type  = "github";
  inputs."vtable-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vtable-v0_3_0".dir   = "v0_3_0";
  inputs."vtable-v0_3_0".owner = "nim-nix-pkgs";
  inputs."vtable-v0_3_0".ref   = "master";
  inputs."vtable-v0_3_0".repo  = "vtable";
  inputs."vtable-v0_3_0".type  = "github";
  inputs."vtable-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vtable-v0_3_1".dir   = "v0_3_1";
  inputs."vtable-v0_3_1".owner = "nim-nix-pkgs";
  inputs."vtable-v0_3_1".ref   = "master";
  inputs."vtable-v0_3_1".repo  = "vtable";
  inputs."vtable-v0_3_1".type  = "github";
  inputs."vtable-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vtable-v0_3_2".dir   = "v0_3_2";
  inputs."vtable-v0_3_2".owner = "nim-nix-pkgs";
  inputs."vtable-v0_3_2".ref   = "master";
  inputs."vtable-v0_3_2".repo  = "vtable";
  inputs."vtable-v0_3_2".type  = "github";
  inputs."vtable-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vtable-v0_3_3".dir   = "v0_3_3";
  inputs."vtable-v0_3_3".owner = "nim-nix-pkgs";
  inputs."vtable-v0_3_3".ref   = "master";
  inputs."vtable-v0_3_3".repo  = "vtable";
  inputs."vtable-v0_3_3".type  = "github";
  inputs."vtable-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vtable-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
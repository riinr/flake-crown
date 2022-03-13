{
  description = ''128-bit integers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nint128-main".dir   = "main";
  inputs."nint128-main".owner = "nim-nix-pkgs";
  inputs."nint128-main".ref   = "master";
  inputs."nint128-main".repo  = "nint128";
  inputs."nint128-main".type  = "github";
  inputs."nint128-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nint128-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nint128-v0_1_0".dir   = "v0_1_0";
  inputs."nint128-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nint128-v0_1_0".ref   = "master";
  inputs."nint128-v0_1_0".repo  = "nint128";
  inputs."nint128-v0_1_0".type  = "github";
  inputs."nint128-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nint128-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nint128-v0_2_0".dir   = "v0_2_0";
  inputs."nint128-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nint128-v0_2_0".ref   = "master";
  inputs."nint128-v0_2_0".repo  = "nint128";
  inputs."nint128-v0_2_0".type  = "github";
  inputs."nint128-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nint128-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nint128-v0_2_1".dir   = "v0_2_1";
  inputs."nint128-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nint128-v0_2_1".ref   = "master";
  inputs."nint128-v0_2_1".repo  = "nint128";
  inputs."nint128-v0_2_1".type  = "github";
  inputs."nint128-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nint128-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
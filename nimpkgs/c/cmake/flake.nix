{
  description = ''CMake for Nimble'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cmake-master".dir   = "master";
  inputs."cmake-master".owner = "nim-nix-pkgs";
  inputs."cmake-master".ref   = "master";
  inputs."cmake-master".repo  = "cmake";
  inputs."cmake-master".type  = "github";
  inputs."cmake-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmake-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cmake-v0_1_1".dir   = "v0_1_1";
  inputs."cmake-v0_1_1".owner = "nim-nix-pkgs";
  inputs."cmake-v0_1_1".ref   = "master";
  inputs."cmake-v0_1_1".repo  = "cmake";
  inputs."cmake-v0_1_1".type  = "github";
  inputs."cmake-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cmake-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
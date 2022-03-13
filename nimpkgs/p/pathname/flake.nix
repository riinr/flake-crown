{
  description = ''Library to support work with pathnames in Windows and Posix-based systems. Inspired by Rubies pathname.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pathname-master".dir   = "master";
  inputs."pathname-master".owner = "nim-nix-pkgs";
  inputs."pathname-master".ref   = "master";
  inputs."pathname-master".repo  = "pathname";
  inputs."pathname-master".type  = "github";
  inputs."pathname-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pathname-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pathname-v0_1_0".dir   = "v0_1_0";
  inputs."pathname-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pathname-v0_1_0".ref   = "master";
  inputs."pathname-v0_1_0".repo  = "pathname";
  inputs."pathname-v0_1_0".type  = "github";
  inputs."pathname-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pathname-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pathname-v0_1_1".dir   = "v0_1_1";
  inputs."pathname-v0_1_1".owner = "nim-nix-pkgs";
  inputs."pathname-v0_1_1".ref   = "master";
  inputs."pathname-v0_1_1".repo  = "pathname";
  inputs."pathname-v0_1_1".type  = "github";
  inputs."pathname-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pathname-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
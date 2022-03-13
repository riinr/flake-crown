{
  description = ''Nim wrapper for the FMOD Low Level C API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."fmod-master".dir   = "master";
  inputs."fmod-master".owner = "nim-nix-pkgs";
  inputs."fmod-master".ref   = "master";
  inputs."fmod-master".repo  = "fmod";
  inputs."fmod-master".type  = "github";
  inputs."fmod-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fmod-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fmod-v0_1_0".dir   = "v0_1_0";
  inputs."fmod-v0_1_0".owner = "nim-nix-pkgs";
  inputs."fmod-v0_1_0".ref   = "master";
  inputs."fmod-v0_1_0".repo  = "fmod";
  inputs."fmod-v0_1_0".type  = "github";
  inputs."fmod-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fmod-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."fmod-v0_1_1".dir   = "v0_1_1";
  inputs."fmod-v0_1_1".owner = "nim-nix-pkgs";
  inputs."fmod-v0_1_1".ref   = "master";
  inputs."fmod-v0_1_1".repo  = "fmod";
  inputs."fmod-v0_1_1".type  = "github";
  inputs."fmod-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fmod-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
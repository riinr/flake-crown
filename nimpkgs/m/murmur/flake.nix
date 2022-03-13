{
  description = ''MurmurHash in pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."murmur-master".dir   = "master";
  inputs."murmur-master".owner = "nim-nix-pkgs";
  inputs."murmur-master".ref   = "master";
  inputs."murmur-master".repo  = "murmur";
  inputs."murmur-master".type  = "github";
  inputs."murmur-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmur-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."murmur-v0_1_0".dir   = "v0_1_0";
  inputs."murmur-v0_1_0".owner = "nim-nix-pkgs";
  inputs."murmur-v0_1_0".ref   = "master";
  inputs."murmur-v0_1_0".repo  = "murmur";
  inputs."murmur-v0_1_0".type  = "github";
  inputs."murmur-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."murmur-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
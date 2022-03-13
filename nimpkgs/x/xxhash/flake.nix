{
  description = ''xxhash wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xxhash-master".dir   = "master";
  inputs."xxhash-master".owner = "nim-nix-pkgs";
  inputs."xxhash-master".ref   = "master";
  inputs."xxhash-master".repo  = "xxhash";
  inputs."xxhash-master".type  = "github";
  inputs."xxhash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxhash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xxhash-0_7_0".dir   = "0_7_0";
  inputs."xxhash-0_7_0".owner = "nim-nix-pkgs";
  inputs."xxhash-0_7_0".ref   = "master";
  inputs."xxhash-0_7_0".repo  = "xxhash";
  inputs."xxhash-0_7_0".type  = "github";
  inputs."xxhash-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxhash-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xxhash-0_7_1".dir   = "0_7_1";
  inputs."xxhash-0_7_1".owner = "nim-nix-pkgs";
  inputs."xxhash-0_7_1".ref   = "master";
  inputs."xxhash-0_7_1".repo  = "xxhash";
  inputs."xxhash-0_7_1".type  = "github";
  inputs."xxhash-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxhash-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xxhash-0_8_0".dir   = "0_8_0";
  inputs."xxhash-0_8_0".owner = "nim-nix-pkgs";
  inputs."xxhash-0_8_0".ref   = "master";
  inputs."xxhash-0_8_0".repo  = "xxhash";
  inputs."xxhash-0_8_0".type  = "github";
  inputs."xxhash-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxhash-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xxhash-0_9_0".dir   = "0_9_0";
  inputs."xxhash-0_9_0".owner = "nim-nix-pkgs";
  inputs."xxhash-0_9_0".ref   = "master";
  inputs."xxhash-0_9_0".repo  = "xxhash";
  inputs."xxhash-0_9_0".type  = "github";
  inputs."xxhash-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xxhash-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
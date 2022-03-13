{
  description = ''official redis client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."redis-master".dir   = "master";
  inputs."redis-master".owner = "nim-nix-pkgs";
  inputs."redis-master".ref   = "master";
  inputs."redis-master".repo  = "redis";
  inputs."redis-master".type  = "github";
  inputs."redis-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redis-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redis-v0_3_0".dir   = "v0_3_0";
  inputs."redis-v0_3_0".owner = "nim-nix-pkgs";
  inputs."redis-v0_3_0".ref   = "master";
  inputs."redis-v0_3_0".repo  = "redis";
  inputs."redis-v0_3_0".type  = "github";
  inputs."redis-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redis-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
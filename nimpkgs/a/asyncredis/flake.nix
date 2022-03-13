{
  description = ''Pure Nim asyncronous driver for Redis DB'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asyncredis-master".dir   = "master";
  inputs."asyncredis-master".owner = "nim-nix-pkgs";
  inputs."asyncredis-master".ref   = "master";
  inputs."asyncredis-master".repo  = "asyncredis";
  inputs."asyncredis-master".type  = "github";
  inputs."asyncredis-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncredis-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asyncredis-v0_8".dir   = "v0_8";
  inputs."asyncredis-v0_8".owner = "nim-nix-pkgs";
  inputs."asyncredis-v0_8".ref   = "master";
  inputs."asyncredis-v0_8".repo  = "asyncredis";
  inputs."asyncredis-v0_8".type  = "github";
  inputs."asyncredis-v0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncredis-v0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asyncredis-v0_8_1".dir   = "v0_8_1";
  inputs."asyncredis-v0_8_1".owner = "nim-nix-pkgs";
  inputs."asyncredis-v0_8_1".ref   = "master";
  inputs."asyncredis-v0_8_1".repo  = "asyncredis";
  inputs."asyncredis-v0_8_1".type  = "github";
  inputs."asyncredis-v0_8_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncredis-v0_8_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asyncredis-v0_8_2".dir   = "v0_8_2";
  inputs."asyncredis-v0_8_2".owner = "nim-nix-pkgs";
  inputs."asyncredis-v0_8_2".ref   = "master";
  inputs."asyncredis-v0_8_2".repo  = "asyncredis";
  inputs."asyncredis-v0_8_2".type  = "github";
  inputs."asyncredis-v0_8_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncredis-v0_8_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
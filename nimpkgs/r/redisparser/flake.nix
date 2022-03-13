{
  description = ''RESP(REdis Serialization Protocol) Serialization for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."redisparser-master".dir   = "master";
  inputs."redisparser-master".owner = "nim-nix-pkgs";
  inputs."redisparser-master".ref   = "master";
  inputs."redisparser-master".repo  = "redisparser";
  inputs."redisparser-master".type  = "github";
  inputs."redisparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redisparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."redisparser-0_1_1".dir   = "0_1_1";
  inputs."redisparser-0_1_1".owner = "nim-nix-pkgs";
  inputs."redisparser-0_1_1".ref   = "master";
  inputs."redisparser-0_1_1".repo  = "redisparser";
  inputs."redisparser-0_1_1".type  = "github";
  inputs."redisparser-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."redisparser-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
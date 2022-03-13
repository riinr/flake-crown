{
  description = ''Another MessagePack implementation written in pure nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."msgpack4nim-master".dir   = "master";
  inputs."msgpack4nim-master".owner = "nim-nix-pkgs";
  inputs."msgpack4nim-master".ref   = "master";
  inputs."msgpack4nim-master".repo  = "msgpack4nim";
  inputs."msgpack4nim-master".type  = "github";
  inputs."msgpack4nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."msgpack4nim-v0_2_9".dir   = "v0_2_9";
  inputs."msgpack4nim-v0_2_9".owner = "nim-nix-pkgs";
  inputs."msgpack4nim-v0_2_9".ref   = "master";
  inputs."msgpack4nim-v0_2_9".repo  = "msgpack4nim";
  inputs."msgpack4nim-v0_2_9".type  = "github";
  inputs."msgpack4nim-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."msgpack4nim-v0_3_0".dir   = "v0_3_0";
  inputs."msgpack4nim-v0_3_0".owner = "nim-nix-pkgs";
  inputs."msgpack4nim-v0_3_0".ref   = "master";
  inputs."msgpack4nim-v0_3_0".repo  = "msgpack4nim";
  inputs."msgpack4nim-v0_3_0".type  = "github";
  inputs."msgpack4nim-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."msgpack4nim-v0_3_1".dir   = "v0_3_1";
  inputs."msgpack4nim-v0_3_1".owner = "nim-nix-pkgs";
  inputs."msgpack4nim-v0_3_1".ref   = "master";
  inputs."msgpack4nim-v0_3_1".repo  = "msgpack4nim";
  inputs."msgpack4nim-v0_3_1".type  = "github";
  inputs."msgpack4nim-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
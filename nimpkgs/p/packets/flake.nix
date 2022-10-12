{
  description = ''Declarative packets system for serializing/deserializing and marshalling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."packets-master".dir   = "master";
  inputs."packets-master".owner = "nim-nix-pkgs";
  inputs."packets-master".ref   = "master";
  inputs."packets-master".repo  = "packets";
  inputs."packets-master".type  = "github";
  inputs."packets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packets-v0_4_2".dir   = "v0_4_2";
  inputs."packets-v0_4_2".owner = "nim-nix-pkgs";
  inputs."packets-v0_4_2".ref   = "master";
  inputs."packets-v0_4_2".repo  = "packets";
  inputs."packets-v0_4_2".type  = "github";
  inputs."packets-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packets-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packets-v0_5".dir   = "v0_5";
  inputs."packets-v0_5".owner = "nim-nix-pkgs";
  inputs."packets-v0_5".ref   = "master";
  inputs."packets-v0_5".repo  = "packets";
  inputs."packets-v0_5".type  = "github";
  inputs."packets-v0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packets-v0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packets-v0_5_1".dir   = "v0_5_1";
  inputs."packets-v0_5_1".owner = "nim-nix-pkgs";
  inputs."packets-v0_5_1".ref   = "master";
  inputs."packets-v0_5_1".repo  = "packets";
  inputs."packets-v0_5_1".type  = "github";
  inputs."packets-v0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packets-v0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
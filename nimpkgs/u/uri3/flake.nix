{
  description = ''nim.uri3 is a Nim module that provides improved way for working with URIs. It is based on the uri module in the Nim standard library and fork from nim-uri2'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uri3-master".dir   = "master";
  inputs."uri3-master".owner = "nim-nix-pkgs";
  inputs."uri3-master".ref   = "master";
  inputs."uri3-master".repo  = "uri3";
  inputs."uri3-master".type  = "github";
  inputs."uri3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3-0_1_4".dir   = "0_1_4";
  inputs."uri3-0_1_4".owner = "nim-nix-pkgs";
  inputs."uri3-0_1_4".ref   = "master";
  inputs."uri3-0_1_4".repo  = "uri3";
  inputs."uri3-0_1_4".type  = "github";
  inputs."uri3-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3-v0_1_1".dir   = "v0_1_1";
  inputs."uri3-v0_1_1".owner = "nim-nix-pkgs";
  inputs."uri3-v0_1_1".ref   = "master";
  inputs."uri3-v0_1_1".repo  = "uri3";
  inputs."uri3-v0_1_1".type  = "github";
  inputs."uri3-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3-v0_1_3".dir   = "v0_1_3";
  inputs."uri3-v0_1_3".owner = "nim-nix-pkgs";
  inputs."uri3-v0_1_3".ref   = "master";
  inputs."uri3-v0_1_3".repo  = "uri3";
  inputs."uri3-v0_1_3".type  = "github";
  inputs."uri3-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3-v0_1_4".dir   = "v0_1_4";
  inputs."uri3-v0_1_4".owner = "nim-nix-pkgs";
  inputs."uri3-v0_1_4".ref   = "master";
  inputs."uri3-v0_1_4".repo  = "uri3";
  inputs."uri3-v0_1_4".type  = "github";
  inputs."uri3-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."uri3-v0_1_5".dir   = "v0_1_5";
  inputs."uri3-v0_1_5".owner = "nim-nix-pkgs";
  inputs."uri3-v0_1_5".ref   = "master";
  inputs."uri3-v0_1_5".repo  = "uri3";
  inputs."uri3-v0_1_5".type  = "github";
  inputs."uri3-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
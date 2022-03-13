{
  description = ''Bindings for picohttpparser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."picohttpparser-master".dir   = "master";
  inputs."picohttpparser-master".owner = "nim-nix-pkgs";
  inputs."picohttpparser-master".ref   = "master";
  inputs."picohttpparser-master".repo  = "picohttpparser";
  inputs."picohttpparser-master".type  = "github";
  inputs."picohttpparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."picohttpparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."picohttpparser-0_10_0".dir   = "0_10_0";
  inputs."picohttpparser-0_10_0".owner = "nim-nix-pkgs";
  inputs."picohttpparser-0_10_0".ref   = "master";
  inputs."picohttpparser-0_10_0".repo  = "picohttpparser";
  inputs."picohttpparser-0_10_0".type  = "github";
  inputs."picohttpparser-0_10_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."picohttpparser-0_10_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."picohttpparser-0_9_0".dir   = "0_9_0";
  inputs."picohttpparser-0_9_0".owner = "nim-nix-pkgs";
  inputs."picohttpparser-0_9_0".ref   = "master";
  inputs."picohttpparser-0_9_0".repo  = "picohttpparser";
  inputs."picohttpparser-0_9_0".type  = "github";
  inputs."picohttpparser-0_9_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."picohttpparser-0_9_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
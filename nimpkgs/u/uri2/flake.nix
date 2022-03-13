{
  description = ''Nim module for better URI handling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."uri2-master".dir   = "master";
  inputs."uri2-master".owner = "nim-nix-pkgs";
  inputs."uri2-master".ref   = "master";
  inputs."uri2-master".repo  = "uri2";
  inputs."uri2-master".type  = "github";
  inputs."uri2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
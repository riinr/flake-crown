{
  description = ''Nim macros to aid in object construction including event programming, and constructors.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."constructor-master".dir   = "master";
  inputs."constructor-master".owner = "nim-nix-pkgs";
  inputs."constructor-master".ref   = "master";
  inputs."constructor-master".repo  = "constructor";
  inputs."constructor-master".type  = "github";
  inputs."constructor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."constructor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
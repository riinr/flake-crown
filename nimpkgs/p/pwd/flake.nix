{
  description = ''Nim port of Python's pwd module for working with the UNIX password file'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pwd-master".dir   = "master";
  inputs."pwd-master".owner = "nim-nix-pkgs";
  inputs."pwd-master".ref   = "master";
  inputs."pwd-master".repo  = "pwd";
  inputs."pwd-master".type  = "github";
  inputs."pwd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pwd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
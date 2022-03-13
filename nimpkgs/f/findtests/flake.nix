{
  description = ''A helper module for writing unit tests in Nim with nake or similar build system.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."findtests-master".dir   = "master";
  inputs."findtests-master".owner = "nim-nix-pkgs";
  inputs."findtests-master".ref   = "master";
  inputs."findtests-master".repo  = "findtests";
  inputs."findtests-master".type  = "github";
  inputs."findtests-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."findtests-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
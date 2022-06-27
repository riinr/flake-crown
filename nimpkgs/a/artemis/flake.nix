{
  description = ''A simple Nim server for the Gemini protocol. Forked from geminim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."artemis-master".dir   = "master";
  inputs."artemis-master".owner = "nim-nix-pkgs";
  inputs."artemis-master".ref   = "master";
  inputs."artemis-master".repo  = "artemis";
  inputs."artemis-master".type  = "github";
  inputs."artemis-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."artemis-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
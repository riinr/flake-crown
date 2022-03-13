{
  description = ''Helpers for supporting and simplifying import of symbols from C into Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."importc_helpers-master".dir   = "master";
  inputs."importc_helpers-master".owner = "nim-nix-pkgs";
  inputs."importc_helpers-master".ref   = "master";
  inputs."importc_helpers-master".repo  = "importc_helpers";
  inputs."importc_helpers-master".type  = "github";
  inputs."importc_helpers-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."importc_helpers-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
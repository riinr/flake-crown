{
  description = ''A library that implements the note.txt specification for note taking.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."notetxt-master".dir   = "master";
  inputs."notetxt-master".owner = "nim-nix-pkgs";
  inputs."notetxt-master".ref   = "master";
  inputs."notetxt-master".repo  = "notetxt";
  inputs."notetxt-master".type  = "github";
  inputs."notetxt-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."notetxt-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
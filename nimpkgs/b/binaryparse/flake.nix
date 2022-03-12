{
  description = ''Binary parser (and writer) in pure Nim. Generates efficient parsing procedures that handle many commonly seen patterns seen in binary files and does sub-byte field reading.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."binaryparse-master".url = "path:./master";
  inputs."binaryparse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binaryparse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."binaryparse-v0_2_4".url = "path:./v0_2_4";
  inputs."binaryparse-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binaryparse-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
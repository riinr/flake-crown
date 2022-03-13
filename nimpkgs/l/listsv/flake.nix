{
  description = ''Basic operations on singly and doubly linked lists.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."listsv-master".dir   = "master";
  inputs."listsv-master".owner = "nim-nix-pkgs";
  inputs."listsv-master".ref   = "master";
  inputs."listsv-master".repo  = "listsv";
  inputs."listsv-master".type  = "github";
  inputs."listsv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."listsv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
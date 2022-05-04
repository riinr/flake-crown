{
  description = ''List comprehension, for creating sequences.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."list_comprehension-master".dir   = "master";
  inputs."list_comprehension-master".owner = "nim-nix-pkgs";
  inputs."list_comprehension-master".ref   = "master";
  inputs."list_comprehension-master".repo  = "list_comprehension";
  inputs."list_comprehension-master".type  = "github";
  inputs."list_comprehension-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."list_comprehension-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
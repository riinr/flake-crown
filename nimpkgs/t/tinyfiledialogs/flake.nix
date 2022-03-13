{
  description = ''TinyFileDialogs for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tinyfiledialogs-master".dir   = "master";
  inputs."tinyfiledialogs-master".owner = "nim-nix-pkgs";
  inputs."tinyfiledialogs-master".ref   = "master";
  inputs."tinyfiledialogs-master".repo  = "tinyfiledialogs";
  inputs."tinyfiledialogs-master".type  = "github";
  inputs."tinyfiledialogs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tinyfiledialogs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
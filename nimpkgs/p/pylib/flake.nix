{
  description = ''Nim library with python-like functions and operators'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pylib-master".dir   = "master";
  inputs."pylib-master".owner = "nim-nix-pkgs";
  inputs."pylib-master".ref   = "master";
  inputs."pylib-master".repo  = "pylib";
  inputs."pylib-master".type  = "github";
  inputs."pylib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pylib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
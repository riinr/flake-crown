{
  description = ''Generate a shared library and bindings for many languages.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."genny-master".dir   = "master";
  inputs."genny-master".owner = "nim-nix-pkgs";
  inputs."genny-master".ref   = "master";
  inputs."genny-master".repo  = "genny";
  inputs."genny-master".type  = "github";
  inputs."genny-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genny-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
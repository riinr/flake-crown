{
  description = ''Option types'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."optionals-master".dir   = "master";
  inputs."optionals-master".owner = "nim-nix-pkgs";
  inputs."optionals-master".ref   = "master";
  inputs."optionals-master".repo  = "optionals";
  inputs."optionals-master".type  = "github";
  inputs."optionals-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionals-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
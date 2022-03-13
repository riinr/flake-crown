{
  description = ''Bindings for the IUP widget toolkit'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."iup-master".dir   = "master";
  inputs."iup-master".owner = "nim-nix-pkgs";
  inputs."iup-master".ref   = "master";
  inputs."iup-master".repo  = "iup";
  inputs."iup-master".type  = "github";
  inputs."iup-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iup-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
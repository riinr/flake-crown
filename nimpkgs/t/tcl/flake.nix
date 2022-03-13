{
  description = ''Wrapper for the TCL programming language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tcl-master".dir   = "master";
  inputs."tcl-master".owner = "nim-nix-pkgs";
  inputs."tcl-master".ref   = "master";
  inputs."tcl-master".repo  = "tcl";
  inputs."tcl-master".type  = "github";
  inputs."tcl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tcl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A wrapper for <stdarg.h>'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stdarg-main".dir   = "main";
  inputs."stdarg-main".owner = "nim-nix-pkgs";
  inputs."stdarg-main".ref   = "master";
  inputs."stdarg-main".repo  = "stdarg";
  inputs."stdarg-main".type  = "github";
  inputs."stdarg-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdarg-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Print Debug for Nim, tiny 3 lines Lib, C Target'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."printdebug-master".dir   = "master";
  inputs."printdebug-master".owner = "nim-nix-pkgs";
  inputs."printdebug-master".ref   = "master";
  inputs."printdebug-master".repo  = "printdebug";
  inputs."printdebug-master".type  = "github";
  inputs."printdebug-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."printdebug-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
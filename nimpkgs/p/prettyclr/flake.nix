{
  description = ''Small library for working with colors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."prettyclr-main".dir   = "main";
  inputs."prettyclr-main".owner = "nim-nix-pkgs";
  inputs."prettyclr-main".ref   = "master";
  inputs."prettyclr-main".repo  = "prettyclr";
  inputs."prettyclr-main".type  = "github";
  inputs."prettyclr-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prettyclr-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
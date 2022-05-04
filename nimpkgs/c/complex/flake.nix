{
  description = ''The ex-stdlib module complex.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."complex-master".dir   = "master";
  inputs."complex-master".owner = "nim-nix-pkgs";
  inputs."complex-master".ref   = "master";
  inputs."complex-master".repo  = "complex";
  inputs."complex-master".type  = "github";
  inputs."complex-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."complex-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
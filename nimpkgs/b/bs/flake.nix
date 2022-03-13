{
  description = ''A good alternative to Makefile.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."bs-main".dir   = "main";
  inputs."bs-main".owner = "nim-nix-pkgs";
  inputs."bs-main".ref   = "master";
  inputs."bs-main".repo  = "bs";
  inputs."bs-main".type  = "github";
  inputs."bs-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bs-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
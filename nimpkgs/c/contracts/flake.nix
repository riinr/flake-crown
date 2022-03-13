{
  description = ''Design by Contract (DbC) library with minimal runtime.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."contracts-main".dir   = "main";
  inputs."contracts-main".owner = "nim-nix-pkgs";
  inputs."contracts-main".ref   = "master";
  inputs."contracts-main".repo  = "contracts";
  inputs."contracts-main".type  = "github";
  inputs."contracts-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contracts-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
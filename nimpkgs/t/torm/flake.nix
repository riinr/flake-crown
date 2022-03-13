{
  description = ''Tiny object relational mapper (torm) for SQLite in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."torm-main".dir   = "main";
  inputs."torm-main".owner = "nim-nix-pkgs";
  inputs."torm-main".ref   = "master";
  inputs."torm-main".repo  = "torm";
  inputs."torm-main".type  = "github";
  inputs."torm-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torm-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
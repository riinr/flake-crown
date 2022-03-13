{
  description = ''Tencil is a mustache-compatible JSON based template engine for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tencil-main".dir   = "main";
  inputs."tencil-main".owner = "nim-nix-pkgs";
  inputs."tencil-main".ref   = "master";
  inputs."tencil-main".repo  = "tencil";
  inputs."tencil-main".type  = "github";
  inputs."tencil-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tencil-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
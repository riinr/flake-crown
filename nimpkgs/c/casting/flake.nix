{
  description = ''A wrapper of the C++ cast operators'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."casting-main".dir   = "main";
  inputs."casting-main".owner = "nim-nix-pkgs";
  inputs."casting-main".ref   = "master";
  inputs."casting-main".repo  = "casting";
  inputs."casting-main".type  = "github";
  inputs."casting-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."casting-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
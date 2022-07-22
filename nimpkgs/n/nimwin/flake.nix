{
  description = ''Platform Agnostic Windowing Library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimwin-main".dir   = "main";
  inputs."nimwin-main".owner = "nim-nix-pkgs";
  inputs."nimwin-main".ref   = "master";
  inputs."nimwin-main".repo  = "nimwin";
  inputs."nimwin-main".type  = "github";
  inputs."nimwin-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwin-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
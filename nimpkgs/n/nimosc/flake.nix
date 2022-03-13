{
  description = ''A wrapper around liblo for the Open Sound Control (OSC) protocol'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimosc-main".dir   = "main";
  inputs."nimosc-main".owner = "nim-nix-pkgs";
  inputs."nimosc-main".ref   = "master";
  inputs."nimosc-main".repo  = "nimosc";
  inputs."nimosc-main".type  = "github";
  inputs."nimosc-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimosc-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Arduino bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."arduino-main".dir   = "main";
  inputs."arduino-main".owner = "nim-nix-pkgs";
  inputs."arduino-main".ref   = "master";
  inputs."arduino-main".repo  = "arduino";
  inputs."arduino-main".type  = "github";
  inputs."arduino-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arduino-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arduino-0_2_0".dir   = "0_2_0";
  inputs."arduino-0_2_0".owner = "nim-nix-pkgs";
  inputs."arduino-0_2_0".ref   = "master";
  inputs."arduino-0_2_0".repo  = "arduino";
  inputs."arduino-0_2_0".type  = "github";
  inputs."arduino-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arduino-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arduino-0_3_0".dir   = "0_3_0";
  inputs."arduino-0_3_0".owner = "nim-nix-pkgs";
  inputs."arduino-0_3_0".ref   = "master";
  inputs."arduino-0_3_0".repo  = "arduino";
  inputs."arduino-0_3_0".type  = "github";
  inputs."arduino-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arduino-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
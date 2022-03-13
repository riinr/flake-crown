{
  description = ''Utilities and simple helpers for programming with Nim on embedded MCU devices'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mcu_utils-main".dir   = "main";
  inputs."mcu_utils-main".owner = "nim-nix-pkgs";
  inputs."mcu_utils-main".ref   = "master";
  inputs."mcu_utils-main".repo  = "mcu_utils";
  inputs."mcu_utils-main".type  = "github";
  inputs."mcu_utils-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcu_utils-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcu_utils-v0_1_0".dir   = "v0_1_0";
  inputs."mcu_utils-v0_1_0".owner = "nim-nix-pkgs";
  inputs."mcu_utils-v0_1_0".ref   = "master";
  inputs."mcu_utils-v0_1_0".repo  = "mcu_utils";
  inputs."mcu_utils-v0_1_0".type  = "github";
  inputs."mcu_utils-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcu_utils-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
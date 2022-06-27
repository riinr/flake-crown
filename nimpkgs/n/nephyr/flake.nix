{
  description = ''Nim wrapper for Zephyr RTOS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nephyr-main".dir   = "main";
  inputs."nephyr-main".owner = "nim-nix-pkgs";
  inputs."nephyr-main".ref   = "master";
  inputs."nephyr-main".repo  = "nephyr";
  inputs."nephyr-main".type  = "github";
  inputs."nephyr-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nephyr-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nephyr-v0_1_0-alpha".dir   = "v0_1_0-alpha";
  inputs."nephyr-v0_1_0-alpha".owner = "nim-nix-pkgs";
  inputs."nephyr-v0_1_0-alpha".ref   = "master";
  inputs."nephyr-v0_1_0-alpha".repo  = "nephyr";
  inputs."nephyr-v0_1_0-alpha".type  = "github";
  inputs."nephyr-v0_1_0-alpha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nephyr-v0_1_0-alpha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
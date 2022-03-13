{
  description = ''nimvisa is C wrapper for NI-VISA instrument control library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimvisa-main".dir   = "main";
  inputs."nimvisa-main".owner = "nim-nix-pkgs";
  inputs."nimvisa-main".ref   = "master";
  inputs."nimvisa-main".repo  = "nimvisa";
  inputs."nimvisa-main".type  = "github";
  inputs."nimvisa-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimvisa-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimvisa-0_1_0".dir   = "0_1_0";
  inputs."nimvisa-0_1_0".owner = "nim-nix-pkgs";
  inputs."nimvisa-0_1_0".ref   = "master";
  inputs."nimvisa-0_1_0".repo  = "nimvisa";
  inputs."nimvisa-0_1_0".type  = "github";
  inputs."nimvisa-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimvisa-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimvisa-0_1_1".dir   = "0_1_1";
  inputs."nimvisa-0_1_1".owner = "nim-nix-pkgs";
  inputs."nimvisa-0_1_1".ref   = "master";
  inputs."nimvisa-0_1_1".repo  = "nimvisa";
  inputs."nimvisa-0_1_1".type  = "github";
  inputs."nimvisa-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimvisa-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimvisa-0_1_2".dir   = "0_1_2";
  inputs."nimvisa-0_1_2".owner = "nim-nix-pkgs";
  inputs."nimvisa-0_1_2".ref   = "master";
  inputs."nimvisa-0_1_2".repo  = "nimvisa";
  inputs."nimvisa-0_1_2".type  = "github";
  inputs."nimvisa-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimvisa-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimvisa-0_1_3".dir   = "0_1_3";
  inputs."nimvisa-0_1_3".owner = "nim-nix-pkgs";
  inputs."nimvisa-0_1_3".ref   = "master";
  inputs."nimvisa-0_1_3".repo  = "nimvisa";
  inputs."nimvisa-0_1_3".type  = "github";
  inputs."nimvisa-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimvisa-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimvisa-0_1_4".dir   = "0_1_4";
  inputs."nimvisa-0_1_4".owner = "nim-nix-pkgs";
  inputs."nimvisa-0_1_4".ref   = "master";
  inputs."nimvisa-0_1_4".repo  = "nimvisa";
  inputs."nimvisa-0_1_4".type  = "github";
  inputs."nimvisa-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimvisa-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
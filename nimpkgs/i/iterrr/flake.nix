{
  description = ''iterate faster. functional style, lazy like, extensible iterator library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."iterrr-main".dir   = "main";
  inputs."iterrr-main".owner = "nim-nix-pkgs";
  inputs."iterrr-main".ref   = "master";
  inputs."iterrr-main".repo  = "iterrr";
  inputs."iterrr-main".type  = "github";
  inputs."iterrr-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iterrr-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."iterrr-0_1_0".dir   = "0_1_0";
  inputs."iterrr-0_1_0".owner = "nim-nix-pkgs";
  inputs."iterrr-0_1_0".ref   = "master";
  inputs."iterrr-0_1_0".repo  = "iterrr";
  inputs."iterrr-0_1_0".type  = "github";
  inputs."iterrr-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iterrr-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."iterrr-0_2_1".dir   = "0_2_1";
  inputs."iterrr-0_2_1".owner = "nim-nix-pkgs";
  inputs."iterrr-0_2_1".ref   = "master";
  inputs."iterrr-0_2_1".repo  = "iterrr";
  inputs."iterrr-0_2_1".type  = "github";
  inputs."iterrr-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iterrr-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."iterrr-0_3_0".dir   = "0_3_0";
  inputs."iterrr-0_3_0".owner = "nim-nix-pkgs";
  inputs."iterrr-0_3_0".ref   = "master";
  inputs."iterrr-0_3_0".repo  = "iterrr";
  inputs."iterrr-0_3_0".type  = "github";
  inputs."iterrr-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iterrr-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."iterrr-0_3_5".dir   = "0_3_5";
  inputs."iterrr-0_3_5".owner = "nim-nix-pkgs";
  inputs."iterrr-0_3_5".ref   = "master";
  inputs."iterrr-0_3_5".repo  = "iterrr";
  inputs."iterrr-0_3_5".type  = "github";
  inputs."iterrr-0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."iterrr-0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
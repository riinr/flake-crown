{
  description = ''WebDriver for Selenium(selenium-hub).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."selenimum-main".dir   = "main";
  inputs."selenimum-main".owner = "nim-nix-pkgs";
  inputs."selenimum-main".ref   = "master";
  inputs."selenimum-main".repo  = "selenimum";
  inputs."selenimum-main".type  = "github";
  inputs."selenimum-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."selenimum-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."selenimum-v0_1_0".dir   = "v0_1_0";
  inputs."selenimum-v0_1_0".owner = "nim-nix-pkgs";
  inputs."selenimum-v0_1_0".ref   = "master";
  inputs."selenimum-v0_1_0".repo  = "selenimum";
  inputs."selenimum-v0_1_0".type  = "github";
  inputs."selenimum-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."selenimum-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."selenimum-v0_1_1".dir   = "v0_1_1";
  inputs."selenimum-v0_1_1".owner = "nim-nix-pkgs";
  inputs."selenimum-v0_1_1".ref   = "master";
  inputs."selenimum-v0_1_1".repo  = "selenimum";
  inputs."selenimum-v0_1_1".type  = "github";
  inputs."selenimum-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."selenimum-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."selenimum-v0_1_2".dir   = "v0_1_2";
  inputs."selenimum-v0_1_2".owner = "nim-nix-pkgs";
  inputs."selenimum-v0_1_2".ref   = "master";
  inputs."selenimum-v0_1_2".repo  = "selenimum";
  inputs."selenimum-v0_1_2".type  = "github";
  inputs."selenimum-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."selenimum-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."selenimum-v0_1_3".dir   = "v0_1_3";
  inputs."selenimum-v0_1_3".owner = "nim-nix-pkgs";
  inputs."selenimum-v0_1_3".ref   = "master";
  inputs."selenimum-v0_1_3".repo  = "selenimum";
  inputs."selenimum-v0_1_3".type  = "github";
  inputs."selenimum-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."selenimum-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."selenimum-v0_2_0".dir   = "v0_2_0";
  inputs."selenimum-v0_2_0".owner = "nim-nix-pkgs";
  inputs."selenimum-v0_2_0".ref   = "master";
  inputs."selenimum-v0_2_0".repo  = "selenimum";
  inputs."selenimum-v0_2_0".type  = "github";
  inputs."selenimum-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."selenimum-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
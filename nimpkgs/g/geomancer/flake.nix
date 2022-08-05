{
  description = ''A library and program for getting geomancy charts and figures.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."geomancer-main".dir   = "main";
  inputs."geomancer-main".owner = "nim-nix-pkgs";
  inputs."geomancer-main".ref   = "master";
  inputs."geomancer-main".repo  = "geomancer";
  inputs."geomancer-main".type  = "github";
  inputs."geomancer-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geomancer-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."geomancer-1_0".dir   = "1_0";
  inputs."geomancer-1_0".owner = "nim-nix-pkgs";
  inputs."geomancer-1_0".ref   = "master";
  inputs."geomancer-1_0".repo  = "geomancer";
  inputs."geomancer-1_0".type  = "github";
  inputs."geomancer-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geomancer-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."geomancer-1_0_1".dir   = "1_0_1";
  inputs."geomancer-1_0_1".owner = "nim-nix-pkgs";
  inputs."geomancer-1_0_1".ref   = "master";
  inputs."geomancer-1_0_1".repo  = "geomancer";
  inputs."geomancer-1_0_1".type  = "github";
  inputs."geomancer-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."geomancer-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
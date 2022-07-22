{
  description = ''Test asynchronous code'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asynctest-main".dir   = "main";
  inputs."asynctest-main".owner = "nim-nix-pkgs";
  inputs."asynctest-main".ref   = "master";
  inputs."asynctest-main".repo  = "asynctest";
  inputs."asynctest-main".type  = "github";
  inputs."asynctest-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_1_0".dir   = "0_1_0";
  inputs."asynctest-0_1_0".owner = "nim-nix-pkgs";
  inputs."asynctest-0_1_0".ref   = "master";
  inputs."asynctest-0_1_0".repo  = "asynctest";
  inputs."asynctest-0_1_0".type  = "github";
  inputs."asynctest-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_2_0".dir   = "0_2_0";
  inputs."asynctest-0_2_0".owner = "nim-nix-pkgs";
  inputs."asynctest-0_2_0".ref   = "master";
  inputs."asynctest-0_2_0".repo  = "asynctest";
  inputs."asynctest-0_2_0".type  = "github";
  inputs."asynctest-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_2_1".dir   = "0_2_1";
  inputs."asynctest-0_2_1".owner = "nim-nix-pkgs";
  inputs."asynctest-0_2_1".ref   = "master";
  inputs."asynctest-0_2_1".repo  = "asynctest";
  inputs."asynctest-0_2_1".type  = "github";
  inputs."asynctest-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_3_0".dir   = "0_3_0";
  inputs."asynctest-0_3_0".owner = "nim-nix-pkgs";
  inputs."asynctest-0_3_0".ref   = "master";
  inputs."asynctest-0_3_0".repo  = "asynctest";
  inputs."asynctest-0_3_0".type  = "github";
  inputs."asynctest-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_3_1".dir   = "0_3_1";
  inputs."asynctest-0_3_1".owner = "nim-nix-pkgs";
  inputs."asynctest-0_3_1".ref   = "master";
  inputs."asynctest-0_3_1".repo  = "asynctest";
  inputs."asynctest-0_3_1".type  = "github";
  inputs."asynctest-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."asynctest-0_3_2".dir   = "0_3_2";
  inputs."asynctest-0_3_2".owner = "nim-nix-pkgs";
  inputs."asynctest-0_3_2".ref   = "master";
  inputs."asynctest-0_3_2".repo  = "asynctest";
  inputs."asynctest-0_3_2".type  = "github";
  inputs."asynctest-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctest-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
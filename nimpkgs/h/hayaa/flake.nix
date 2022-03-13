{
  description = ''Conway's Game of Life implemented in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hayaa-main".dir   = "main";
  inputs."hayaa-main".owner = "nim-nix-pkgs";
  inputs."hayaa-main".ref   = "master";
  inputs."hayaa-main".repo  = "hayaa";
  inputs."hayaa-main".type  = "github";
  inputs."hayaa-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hayaa-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hayaa-v0_2_0".dir   = "v0_2_0";
  inputs."hayaa-v0_2_0".owner = "nim-nix-pkgs";
  inputs."hayaa-v0_2_0".ref   = "master";
  inputs."hayaa-v0_2_0".repo  = "hayaa";
  inputs."hayaa-v0_2_0".type  = "github";
  inputs."hayaa-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hayaa-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hayaa-v0_2_1".dir   = "v0_2_1";
  inputs."hayaa-v0_2_1".owner = "nim-nix-pkgs";
  inputs."hayaa-v0_2_1".ref   = "master";
  inputs."hayaa-v0_2_1".repo  = "hayaa";
  inputs."hayaa-v0_2_1".type  = "github";
  inputs."hayaa-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hayaa-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hayaa-v0_3_0".dir   = "v0_3_0";
  inputs."hayaa-v0_3_0".owner = "nim-nix-pkgs";
  inputs."hayaa-v0_3_0".ref   = "master";
  inputs."hayaa-v0_3_0".repo  = "hayaa";
  inputs."hayaa-v0_3_0".type  = "github";
  inputs."hayaa-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hayaa-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
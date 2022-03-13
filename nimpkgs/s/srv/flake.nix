{
  description = ''A tiny static file web server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."srv-master".dir   = "master";
  inputs."srv-master".owner = "nim-nix-pkgs";
  inputs."srv-master".ref   = "master";
  inputs."srv-master".repo  = "srv";
  inputs."srv-master".type  = "github";
  inputs."srv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."srv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."srv-v0_1_0".dir   = "v0_1_0";
  inputs."srv-v0_1_0".owner = "nim-nix-pkgs";
  inputs."srv-v0_1_0".ref   = "master";
  inputs."srv-v0_1_0".repo  = "srv";
  inputs."srv-v0_1_0".type  = "github";
  inputs."srv-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."srv-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."srv-v0_2_0".dir   = "v0_2_0";
  inputs."srv-v0_2_0".owner = "nim-nix-pkgs";
  inputs."srv-v0_2_0".ref   = "master";
  inputs."srv-v0_2_0".repo  = "srv";
  inputs."srv-v0_2_0".type  = "github";
  inputs."srv-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."srv-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."srv-v0_3_0".dir   = "v0_3_0";
  inputs."srv-v0_3_0".owner = "nim-nix-pkgs";
  inputs."srv-v0_3_0".ref   = "master";
  inputs."srv-v0_3_0".repo  = "srv";
  inputs."srv-v0_3_0".type  = "github";
  inputs."srv-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."srv-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."srv-v0_3_1".dir   = "v0_3_1";
  inputs."srv-v0_3_1".owner = "nim-nix-pkgs";
  inputs."srv-v0_3_1".ref   = "master";
  inputs."srv-v0_3_1".repo  = "srv";
  inputs."srv-v0_3_1".type  = "github";
  inputs."srv-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."srv-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
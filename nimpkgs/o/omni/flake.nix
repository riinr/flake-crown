{
  description = ''omni is a DSL for low-level audio programming.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."omni-develop".dir   = "develop";
  inputs."omni-develop".owner = "nim-nix-pkgs";
  inputs."omni-develop".ref   = "master";
  inputs."omni-develop".repo  = "omni";
  inputs."omni-develop".type  = "github";
  inputs."omni-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-master".dir   = "master";
  inputs."omni-master".owner = "nim-nix-pkgs";
  inputs."omni-master".ref   = "master";
  inputs."omni-master".repo  = "omni";
  inputs."omni-master".type  = "github";
  inputs."omni-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_1_0".dir   = "0_1_0";
  inputs."omni-0_1_0".owner = "nim-nix-pkgs";
  inputs."omni-0_1_0".ref   = "master";
  inputs."omni-0_1_0".repo  = "omni";
  inputs."omni-0_1_0".type  = "github";
  inputs."omni-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_2_0".dir   = "0_2_0";
  inputs."omni-0_2_0".owner = "nim-nix-pkgs";
  inputs."omni-0_2_0".ref   = "master";
  inputs."omni-0_2_0".repo  = "omni";
  inputs."omni-0_2_0".type  = "github";
  inputs."omni-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_2_1".dir   = "0_2_1";
  inputs."omni-0_2_1".owner = "nim-nix-pkgs";
  inputs."omni-0_2_1".ref   = "master";
  inputs."omni-0_2_1".repo  = "omni";
  inputs."omni-0_2_1".type  = "github";
  inputs."omni-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_2_2".dir   = "0_2_2";
  inputs."omni-0_2_2".owner = "nim-nix-pkgs";
  inputs."omni-0_2_2".ref   = "master";
  inputs."omni-0_2_2".repo  = "omni";
  inputs."omni-0_2_2".type  = "github";
  inputs."omni-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_2_3".dir   = "0_2_3";
  inputs."omni-0_2_3".owner = "nim-nix-pkgs";
  inputs."omni-0_2_3".ref   = "master";
  inputs."omni-0_2_3".repo  = "omni";
  inputs."omni-0_2_3".type  = "github";
  inputs."omni-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_4_0".dir   = "0_4_0";
  inputs."omni-0_4_0".owner = "nim-nix-pkgs";
  inputs."omni-0_4_0".ref   = "master";
  inputs."omni-0_4_0".repo  = "omni";
  inputs."omni-0_4_0".type  = "github";
  inputs."omni-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni-0_4_1".dir   = "0_4_1";
  inputs."omni-0_4_1".owner = "nim-nix-pkgs";
  inputs."omni-0_4_1".ref   = "master";
  inputs."omni-0_4_1".repo  = "omni";
  inputs."omni-0_4_1".type  = "github";
  inputs."omni-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
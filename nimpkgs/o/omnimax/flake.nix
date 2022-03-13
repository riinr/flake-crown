{
  description = ''Max wrapper for omni.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."omnimax-develop".dir   = "develop";
  inputs."omnimax-develop".owner = "nim-nix-pkgs";
  inputs."omnimax-develop".ref   = "master";
  inputs."omnimax-develop".repo  = "omnimax";
  inputs."omnimax-develop".type  = "github";
  inputs."omnimax-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-master".dir   = "master";
  inputs."omnimax-master".owner = "nim-nix-pkgs";
  inputs."omnimax-master".ref   = "master";
  inputs."omnimax-master".repo  = "omnimax";
  inputs."omnimax-master".type  = "github";
  inputs."omnimax-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_1_0".dir   = "0_1_0";
  inputs."omnimax-0_1_0".owner = "nim-nix-pkgs";
  inputs."omnimax-0_1_0".ref   = "master";
  inputs."omnimax-0_1_0".repo  = "omnimax";
  inputs."omnimax-0_1_0".type  = "github";
  inputs."omnimax-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_2_0".dir   = "0_2_0";
  inputs."omnimax-0_2_0".owner = "nim-nix-pkgs";
  inputs."omnimax-0_2_0".ref   = "master";
  inputs."omnimax-0_2_0".repo  = "omnimax";
  inputs."omnimax-0_2_0".type  = "github";
  inputs."omnimax-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_2_1".dir   = "0_2_1";
  inputs."omnimax-0_2_1".owner = "nim-nix-pkgs";
  inputs."omnimax-0_2_1".ref   = "master";
  inputs."omnimax-0_2_1".repo  = "omnimax";
  inputs."omnimax-0_2_1".type  = "github";
  inputs."omnimax-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_2_2".dir   = "0_2_2";
  inputs."omnimax-0_2_2".owner = "nim-nix-pkgs";
  inputs."omnimax-0_2_2".ref   = "master";
  inputs."omnimax-0_2_2".repo  = "omnimax";
  inputs."omnimax-0_2_2".type  = "github";
  inputs."omnimax-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_2_3".dir   = "0_2_3";
  inputs."omnimax-0_2_3".owner = "nim-nix-pkgs";
  inputs."omnimax-0_2_3".ref   = "master";
  inputs."omnimax-0_2_3".repo  = "omnimax";
  inputs."omnimax-0_2_3".type  = "github";
  inputs."omnimax-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omnimax-0_4_0".dir   = "0_4_0";
  inputs."omnimax-0_4_0".owner = "nim-nix-pkgs";
  inputs."omnimax-0_4_0".ref   = "master";
  inputs."omnimax-0_4_0".repo  = "omnimax";
  inputs."omnimax-0_4_0".type  = "github";
  inputs."omnimax-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omnimax-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
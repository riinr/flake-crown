{
  description = ''subhook wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."subhook-master".dir   = "master";
  inputs."subhook-master".owner = "nim-nix-pkgs";
  inputs."subhook-master".ref   = "master";
  inputs."subhook-master".repo  = "subhook";
  inputs."subhook-master".type  = "github";
  inputs."subhook-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_1_0".dir   = "0_1_0";
  inputs."subhook-0_1_0".owner = "nim-nix-pkgs";
  inputs."subhook-0_1_0".ref   = "master";
  inputs."subhook-0_1_0".repo  = "subhook";
  inputs."subhook-0_1_0".type  = "github";
  inputs."subhook-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_1_1".dir   = "0_1_1";
  inputs."subhook-0_1_1".owner = "nim-nix-pkgs";
  inputs."subhook-0_1_1".ref   = "master";
  inputs."subhook-0_1_1".repo  = "subhook";
  inputs."subhook-0_1_1".type  = "github";
  inputs."subhook-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_1_2".dir   = "0_1_2";
  inputs."subhook-0_1_2".owner = "nim-nix-pkgs";
  inputs."subhook-0_1_2".ref   = "master";
  inputs."subhook-0_1_2".repo  = "subhook";
  inputs."subhook-0_1_2".type  = "github";
  inputs."subhook-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_4_2_0".dir   = "0_4_2_0";
  inputs."subhook-0_4_2_0".owner = "nim-nix-pkgs";
  inputs."subhook-0_4_2_0".ref   = "master";
  inputs."subhook-0_4_2_0".repo  = "subhook";
  inputs."subhook-0_4_2_0".type  = "github";
  inputs."subhook-0_4_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_4_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_5_0".dir   = "0_5_0";
  inputs."subhook-0_5_0".owner = "nim-nix-pkgs";
  inputs."subhook-0_5_0".ref   = "master";
  inputs."subhook-0_5_0".repo  = "subhook";
  inputs."subhook-0_5_0".type  = "github";
  inputs."subhook-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_5_1".dir   = "0_5_1";
  inputs."subhook-0_5_1".owner = "nim-nix-pkgs";
  inputs."subhook-0_5_1".ref   = "master";
  inputs."subhook-0_5_1".repo  = "subhook";
  inputs."subhook-0_5_1".type  = "github";
  inputs."subhook-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_5_2".dir   = "0_5_2";
  inputs."subhook-0_5_2".owner = "nim-nix-pkgs";
  inputs."subhook-0_5_2".ref   = "master";
  inputs."subhook-0_5_2".repo  = "subhook";
  inputs."subhook-0_5_2".type  = "github";
  inputs."subhook-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_5_3".dir   = "0_5_3";
  inputs."subhook-0_5_3".owner = "nim-nix-pkgs";
  inputs."subhook-0_5_3".ref   = "master";
  inputs."subhook-0_5_3".repo  = "subhook";
  inputs."subhook-0_5_3".type  = "github";
  inputs."subhook-0_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."subhook-0_5_5".dir   = "0_5_5";
  inputs."subhook-0_5_5".owner = "nim-nix-pkgs";
  inputs."subhook-0_5_5".ref   = "master";
  inputs."subhook-0_5_5".repo  = "subhook";
  inputs."subhook-0_5_5".type  = "github";
  inputs."subhook-0_5_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook-0_5_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
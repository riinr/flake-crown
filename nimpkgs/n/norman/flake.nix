{
  description = ''Migration manager for Norm.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."norman-develop".dir   = "develop";
  inputs."norman-develop".owner = "nim-nix-pkgs";
  inputs."norman-develop".ref   = "master";
  inputs."norman-develop".repo  = "norman";
  inputs."norman-develop".type  = "github";
  inputs."norman-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-master".dir   = "master";
  inputs."norman-master".owner = "nim-nix-pkgs";
  inputs."norman-master".ref   = "master";
  inputs."norman-master".repo  = "norman";
  inputs."norman-master".type  = "github";
  inputs."norman-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-1_0_0".dir   = "1_0_0";
  inputs."norman-1_0_0".owner = "nim-nix-pkgs";
  inputs."norman-1_0_0".ref   = "master";
  inputs."norman-1_0_0".repo  = "norman";
  inputs."norman-1_0_0".type  = "github";
  inputs."norman-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-1_0_1".dir   = "1_0_1";
  inputs."norman-1_0_1".owner = "nim-nix-pkgs";
  inputs."norman-1_0_1".ref   = "master";
  inputs."norman-1_0_1".repo  = "norman";
  inputs."norman-1_0_1".type  = "github";
  inputs."norman-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-1_0_2".dir   = "1_0_2";
  inputs."norman-1_0_2".owner = "nim-nix-pkgs";
  inputs."norman-1_0_2".ref   = "master";
  inputs."norman-1_0_2".repo  = "norman";
  inputs."norman-1_0_2".type  = "github";
  inputs."norman-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_0_0".dir   = "2_0_0";
  inputs."norman-2_0_0".owner = "nim-nix-pkgs";
  inputs."norman-2_0_0".ref   = "master";
  inputs."norman-2_0_0".repo  = "norman";
  inputs."norman-2_0_0".type  = "github";
  inputs."norman-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_0".dir   = "2_1_0";
  inputs."norman-2_1_0".owner = "nim-nix-pkgs";
  inputs."norman-2_1_0".ref   = "master";
  inputs."norman-2_1_0".repo  = "norman";
  inputs."norman-2_1_0".type  = "github";
  inputs."norman-2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_1".dir   = "2_1_1";
  inputs."norman-2_1_1".owner = "nim-nix-pkgs";
  inputs."norman-2_1_1".ref   = "master";
  inputs."norman-2_1_1".repo  = "norman";
  inputs."norman-2_1_1".type  = "github";
  inputs."norman-2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_2".dir   = "2_1_2";
  inputs."norman-2_1_2".owner = "nim-nix-pkgs";
  inputs."norman-2_1_2".ref   = "master";
  inputs."norman-2_1_2".repo  = "norman";
  inputs."norman-2_1_2".type  = "github";
  inputs."norman-2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_3".dir   = "2_1_3";
  inputs."norman-2_1_3".owner = "nim-nix-pkgs";
  inputs."norman-2_1_3".ref   = "master";
  inputs."norman-2_1_3".repo  = "norman";
  inputs."norman-2_1_3".type  = "github";
  inputs."norman-2_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_4".dir   = "2_1_4";
  inputs."norman-2_1_4".owner = "nim-nix-pkgs";
  inputs."norman-2_1_4".ref   = "master";
  inputs."norman-2_1_4".repo  = "norman";
  inputs."norman-2_1_4".type  = "github";
  inputs."norman-2_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_5".dir   = "2_1_5";
  inputs."norman-2_1_5".owner = "nim-nix-pkgs";
  inputs."norman-2_1_5".ref   = "master";
  inputs."norman-2_1_5".repo  = "norman";
  inputs."norman-2_1_5".type  = "github";
  inputs."norman-2_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_7".dir   = "2_1_7";
  inputs."norman-2_1_7".owner = "nim-nix-pkgs";
  inputs."norman-2_1_7".ref   = "master";
  inputs."norman-2_1_7".repo  = "norman";
  inputs."norman-2_1_7".type  = "github";
  inputs."norman-2_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."norman-2_1_8".dir   = "2_1_8";
  inputs."norman-2_1_8".owner = "nim-nix-pkgs";
  inputs."norman-2_1_8".ref   = "master";
  inputs."norman-2_1_8".repo  = "norman";
  inputs."norman-2_1_8".type  = "github";
  inputs."norman-2_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."norman-2_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
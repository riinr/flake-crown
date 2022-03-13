{
  description = ''A better regular expression library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nre-master".dir   = "master";
  inputs."nre-master".owner = "nim-nix-pkgs";
  inputs."nre-master".ref   = "master";
  inputs."nre-master".repo  = "nre";
  inputs."nre-master".type  = "github";
  inputs."nre-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_1_0".dir   = "0_1_0";
  inputs."nre-0_1_0".owner = "nim-nix-pkgs";
  inputs."nre-0_1_0".ref   = "master";
  inputs."nre-0_1_0".repo  = "nre";
  inputs."nre-0_1_0".type  = "github";
  inputs."nre-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_2_0".dir   = "0_2_0";
  inputs."nre-0_2_0".owner = "nim-nix-pkgs";
  inputs."nre-0_2_0".ref   = "master";
  inputs."nre-0_2_0".repo  = "nre";
  inputs."nre-0_2_0".type  = "github";
  inputs."nre-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_3_0".dir   = "0_3_0";
  inputs."nre-0_3_0".owner = "nim-nix-pkgs";
  inputs."nre-0_3_0".ref   = "master";
  inputs."nre-0_3_0".repo  = "nre";
  inputs."nre-0_3_0".type  = "github";
  inputs."nre-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_3_1".dir   = "0_3_1";
  inputs."nre-0_3_1".owner = "nim-nix-pkgs";
  inputs."nre-0_3_1".ref   = "master";
  inputs."nre-0_3_1".repo  = "nre";
  inputs."nre-0_3_1".type  = "github";
  inputs."nre-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_4_0".dir   = "0_4_0";
  inputs."nre-0_4_0".owner = "nim-nix-pkgs";
  inputs."nre-0_4_0".ref   = "master";
  inputs."nre-0_4_0".repo  = "nre";
  inputs."nre-0_4_0".type  = "github";
  inputs."nre-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_5_0".dir   = "0_5_0";
  inputs."nre-0_5_0".owner = "nim-nix-pkgs";
  inputs."nre-0_5_0".ref   = "master";
  inputs."nre-0_5_0".repo  = "nre";
  inputs."nre-0_5_0".type  = "github";
  inputs."nre-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_6_0".dir   = "0_6_0";
  inputs."nre-0_6_0".owner = "nim-nix-pkgs";
  inputs."nre-0_6_0".ref   = "master";
  inputs."nre-0_6_0".repo  = "nre";
  inputs."nre-0_6_0".type  = "github";
  inputs."nre-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-0_6_1".dir   = "0_6_1";
  inputs."nre-0_6_1".owner = "nim-nix-pkgs";
  inputs."nre-0_6_1".ref   = "master";
  inputs."nre-0_6_1".repo  = "nre";
  inputs."nre-0_6_1".type  = "github";
  inputs."nre-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-1_0_0".dir   = "1_0_0";
  inputs."nre-1_0_0".owner = "nim-nix-pkgs";
  inputs."nre-1_0_0".ref   = "master";
  inputs."nre-1_0_0".repo  = "nre";
  inputs."nre-1_0_0".type  = "github";
  inputs."nre-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-2_0_0".dir   = "2_0_0";
  inputs."nre-2_0_0".owner = "nim-nix-pkgs";
  inputs."nre-2_0_0".ref   = "master";
  inputs."nre-2_0_0".repo  = "nre";
  inputs."nre-2_0_0".type  = "github";
  inputs."nre-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-2_0_1".dir   = "2_0_1";
  inputs."nre-2_0_1".owner = "nim-nix-pkgs";
  inputs."nre-2_0_1".ref   = "master";
  inputs."nre-2_0_1".repo  = "nre";
  inputs."nre-2_0_1".type  = "github";
  inputs."nre-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nre-2_0_2".dir   = "2_0_2";
  inputs."nre-2_0_2".owner = "nim-nix-pkgs";
  inputs."nre-2_0_2".ref   = "master";
  inputs."nre-2_0_2".repo  = "nre";
  inputs."nre-2_0_2".type  = "github";
  inputs."nre-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
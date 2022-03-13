{
  description = ''Matrix library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."manu-master".dir   = "master";
  inputs."manu-master".owner = "nim-nix-pkgs";
  inputs."manu-master".ref   = "master";
  inputs."manu-master".repo  = "manu";
  inputs."manu-master".type  = "github";
  inputs."manu-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-1_9_1".dir   = "1_9_1";
  inputs."manu-1_9_1".owner = "nim-nix-pkgs";
  inputs."manu-1_9_1".ref   = "master";
  inputs."manu-1_9_1".repo  = "manu";
  inputs."manu-1_9_1".type  = "github";
  inputs."manu-1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_0".dir   = "v1_0";
  inputs."manu-v1_0".owner = "nim-nix-pkgs";
  inputs."manu-v1_0".ref   = "master";
  inputs."manu-v1_0".repo  = "manu";
  inputs."manu-v1_0".type  = "github";
  inputs."manu-v1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_1".dir   = "v1_1";
  inputs."manu-v1_1".owner = "nim-nix-pkgs";
  inputs."manu-v1_1".ref   = "master";
  inputs."manu-v1_1".repo  = "manu";
  inputs."manu-v1_1".type  = "github";
  inputs."manu-v1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_2".dir   = "v1_2";
  inputs."manu-v1_2".owner = "nim-nix-pkgs";
  inputs."manu-v1_2".ref   = "master";
  inputs."manu-v1_2".repo  = "manu";
  inputs."manu-v1_2".type  = "github";
  inputs."manu-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_3".dir   = "v1_3";
  inputs."manu-v1_3".owner = "nim-nix-pkgs";
  inputs."manu-v1_3".ref   = "master";
  inputs."manu-v1_3".repo  = "manu";
  inputs."manu-v1_3".type  = "github";
  inputs."manu-v1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_4".dir   = "v1_4";
  inputs."manu-v1_4".owner = "nim-nix-pkgs";
  inputs."manu-v1_4".ref   = "master";
  inputs."manu-v1_4".repo  = "manu";
  inputs."manu-v1_4".type  = "github";
  inputs."manu-v1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_5".dir   = "v1_5";
  inputs."manu-v1_5".owner = "nim-nix-pkgs";
  inputs."manu-v1_5".ref   = "master";
  inputs."manu-v1_5".repo  = "manu";
  inputs."manu-v1_5".type  = "github";
  inputs."manu-v1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v1_9_1".dir   = "v1_9_1";
  inputs."manu-v1_9_1".owner = "nim-nix-pkgs";
  inputs."manu-v1_9_1".ref   = "master";
  inputs."manu-v1_9_1".repo  = "manu";
  inputs."manu-v1_9_1".type  = "github";
  inputs."manu-v1_9_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v1_9_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_0".dir   = "v2_0";
  inputs."manu-v2_0".owner = "nim-nix-pkgs";
  inputs."manu-v2_0".ref   = "master";
  inputs."manu-v2_0".repo  = "manu";
  inputs."manu-v2_0".type  = "github";
  inputs."manu-v2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_0_1".dir   = "v2_0_1";
  inputs."manu-v2_0_1".owner = "nim-nix-pkgs";
  inputs."manu-v2_0_1".ref   = "master";
  inputs."manu-v2_0_1".repo  = "manu";
  inputs."manu-v2_0_1".type  = "github";
  inputs."manu-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_0_4".dir   = "v2_0_4";
  inputs."manu-v2_0_4".owner = "nim-nix-pkgs";
  inputs."manu-v2_0_4".ref   = "master";
  inputs."manu-v2_0_4".repo  = "manu";
  inputs."manu-v2_0_4".type  = "github";
  inputs."manu-v2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_1_0".dir   = "v2_1_0";
  inputs."manu-v2_1_0".owner = "nim-nix-pkgs";
  inputs."manu-v2_1_0".ref   = "master";
  inputs."manu-v2_1_0".repo  = "manu";
  inputs."manu-v2_1_0".type  = "github";
  inputs."manu-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_1_1".dir   = "v2_1_1";
  inputs."manu-v2_1_1".owner = "nim-nix-pkgs";
  inputs."manu-v2_1_1".ref   = "master";
  inputs."manu-v2_1_1".repo  = "manu";
  inputs."manu-v2_1_1".type  = "github";
  inputs."manu-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_1_2".dir   = "v2_1_2";
  inputs."manu-v2_1_2".owner = "nim-nix-pkgs";
  inputs."manu-v2_1_2".ref   = "master";
  inputs."manu-v2_1_2".repo  = "manu";
  inputs."manu-v2_1_2".type  = "github";
  inputs."manu-v2_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_2_0".dir   = "v2_2_0";
  inputs."manu-v2_2_0".owner = "nim-nix-pkgs";
  inputs."manu-v2_2_0".ref   = "master";
  inputs."manu-v2_2_0".repo  = "manu";
  inputs."manu-v2_2_0".type  = "github";
  inputs."manu-v2_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_2_1".dir   = "v2_2_1";
  inputs."manu-v2_2_1".owner = "nim-nix-pkgs";
  inputs."manu-v2_2_1".ref   = "master";
  inputs."manu-v2_2_1".repo  = "manu";
  inputs."manu-v2_2_1".type  = "github";
  inputs."manu-v2_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."manu-v2_3".dir   = "v2_3";
  inputs."manu-v2_3".owner = "nim-nix-pkgs";
  inputs."manu-v2_3".ref   = "master";
  inputs."manu-v2_3".repo  = "manu";
  inputs."manu-v2_3".type  = "github";
  inputs."manu-v2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."manu-v2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
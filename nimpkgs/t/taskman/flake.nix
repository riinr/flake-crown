{
  description = ''A package that manages background tasks on a schedule'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."taskman-master".dir   = "master";
  inputs."taskman-master".owner = "nim-nix-pkgs";
  inputs."taskman-master".ref   = "master";
  inputs."taskman-master".repo  = "taskman";
  inputs."taskman-master".type  = "github";
  inputs."taskman-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskman-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskman-0_1_0".dir   = "0_1_0";
  inputs."taskman-0_1_0".owner = "nim-nix-pkgs";
  inputs."taskman-0_1_0".ref   = "master";
  inputs."taskman-0_1_0".repo  = "taskman";
  inputs."taskman-0_1_0".type  = "github";
  inputs."taskman-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskman-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskman-0_1_1".dir   = "0_1_1";
  inputs."taskman-0_1_1".owner = "nim-nix-pkgs";
  inputs."taskman-0_1_1".ref   = "master";
  inputs."taskman-0_1_1".repo  = "taskman";
  inputs."taskman-0_1_1".type  = "github";
  inputs."taskman-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskman-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskman-0_2_1".dir   = "0_2_1";
  inputs."taskman-0_2_1".owner = "nim-nix-pkgs";
  inputs."taskman-0_2_1".ref   = "master";
  inputs."taskman-0_2_1".repo  = "taskman";
  inputs."taskman-0_2_1".type  = "github";
  inputs."taskman-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskman-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskman-0_3_0".dir   = "0_3_0";
  inputs."taskman-0_3_0".owner = "nim-nix-pkgs";
  inputs."taskman-0_3_0".ref   = "master";
  inputs."taskman-0_3_0".repo  = "taskman";
  inputs."taskman-0_3_0".type  = "github";
  inputs."taskman-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskman-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskman-0_4_0".dir   = "0_4_0";
  inputs."taskman-0_4_0".owner = "nim-nix-pkgs";
  inputs."taskman-0_4_0".ref   = "master";
  inputs."taskman-0_4_0".repo  = "taskman";
  inputs."taskman-0_4_0".type  = "github";
  inputs."taskman-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskman-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskman-0_4_1".dir   = "0_4_1";
  inputs."taskman-0_4_1".owner = "nim-nix-pkgs";
  inputs."taskman-0_4_1".ref   = "master";
  inputs."taskman-0_4_1".repo  = "taskman";
  inputs."taskman-0_4_1".type  = "github";
  inputs."taskman-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskman-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskman-0_5_0".dir   = "0_5_0";
  inputs."taskman-0_5_0".owner = "nim-nix-pkgs";
  inputs."taskman-0_5_0".ref   = "master";
  inputs."taskman-0_5_0".repo  = "taskman";
  inputs."taskman-0_5_0".type  = "github";
  inputs."taskman-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskman-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskman-0_5_1".dir   = "0_5_1";
  inputs."taskman-0_5_1".owner = "nim-nix-pkgs";
  inputs."taskman-0_5_1".ref   = "master";
  inputs."taskman-0_5_1".repo  = "taskman";
  inputs."taskman-0_5_1".type  = "github";
  inputs."taskman-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskman-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taskman-0_5_2".dir   = "0_5_2";
  inputs."taskman-0_5_2".owner = "nim-nix-pkgs";
  inputs."taskman-0_5_2".ref   = "master";
  inputs."taskman-0_5_2".repo  = "taskman";
  inputs."taskman-0_5_2".type  = "github";
  inputs."taskman-0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taskman-0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
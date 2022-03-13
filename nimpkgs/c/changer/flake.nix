{
  description = ''A tool for managing a project's changelog'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."changer-master".dir   = "master";
  inputs."changer-master".owner = "nim-nix-pkgs";
  inputs."changer-master".ref   = "master";
  inputs."changer-master".repo  = "changer";
  inputs."changer-master".type  = "github";
  inputs."changer-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_1_1".dir   = "v0_1_1";
  inputs."changer-v0_1_1".owner = "nim-nix-pkgs";
  inputs."changer-v0_1_1".ref   = "master";
  inputs."changer-v0_1_1".repo  = "changer";
  inputs."changer-v0_1_1".type  = "github";
  inputs."changer-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_2_0".dir   = "v0_2_0";
  inputs."changer-v0_2_0".owner = "nim-nix-pkgs";
  inputs."changer-v0_2_0".ref   = "master";
  inputs."changer-v0_2_0".repo  = "changer";
  inputs."changer-v0_2_0".type  = "github";
  inputs."changer-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_3_0".dir   = "v0_3_0";
  inputs."changer-v0_3_0".owner = "nim-nix-pkgs";
  inputs."changer-v0_3_0".ref   = "master";
  inputs."changer-v0_3_0".repo  = "changer";
  inputs."changer-v0_3_0".type  = "github";
  inputs."changer-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_4_0".dir   = "v0_4_0";
  inputs."changer-v0_4_0".owner = "nim-nix-pkgs";
  inputs."changer-v0_4_0".ref   = "master";
  inputs."changer-v0_4_0".repo  = "changer";
  inputs."changer-v0_4_0".type  = "github";
  inputs."changer-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_4_1".dir   = "v0_4_1";
  inputs."changer-v0_4_1".owner = "nim-nix-pkgs";
  inputs."changer-v0_4_1".ref   = "master";
  inputs."changer-v0_4_1".repo  = "changer";
  inputs."changer-v0_4_1".type  = "github";
  inputs."changer-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_4_2".dir   = "v0_4_2";
  inputs."changer-v0_4_2".owner = "nim-nix-pkgs";
  inputs."changer-v0_4_2".ref   = "master";
  inputs."changer-v0_4_2".repo  = "changer";
  inputs."changer-v0_4_2".type  = "github";
  inputs."changer-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_5_0".dir   = "v0_5_0";
  inputs."changer-v0_5_0".owner = "nim-nix-pkgs";
  inputs."changer-v0_5_0".ref   = "master";
  inputs."changer-v0_5_0".repo  = "changer";
  inputs."changer-v0_5_0".type  = "github";
  inputs."changer-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_6_0".dir   = "v0_6_0";
  inputs."changer-v0_6_0".owner = "nim-nix-pkgs";
  inputs."changer-v0_6_0".ref   = "master";
  inputs."changer-v0_6_0".repo  = "changer";
  inputs."changer-v0_6_0".type  = "github";
  inputs."changer-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_6_1".dir   = "v0_6_1";
  inputs."changer-v0_6_1".owner = "nim-nix-pkgs";
  inputs."changer-v0_6_1".ref   = "master";
  inputs."changer-v0_6_1".repo  = "changer";
  inputs."changer-v0_6_1".type  = "github";
  inputs."changer-v0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_6_2".dir   = "v0_6_2";
  inputs."changer-v0_6_2".owner = "nim-nix-pkgs";
  inputs."changer-v0_6_2".ref   = "master";
  inputs."changer-v0_6_2".repo  = "changer";
  inputs."changer-v0_6_2".type  = "github";
  inputs."changer-v0_6_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_6_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."changer-v0_7_0".dir   = "v0_7_0";
  inputs."changer-v0_7_0".owner = "nim-nix-pkgs";
  inputs."changer-v0_7_0".ref   = "master";
  inputs."changer-v0_7_0".repo  = "changer";
  inputs."changer-v0_7_0".type  = "github";
  inputs."changer-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."changer-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
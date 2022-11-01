{
  description = ''typed AST normalization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."assume-master".dir   = "master";
  inputs."assume-master".owner = "nim-nix-pkgs";
  inputs."assume-master".ref   = "master";
  inputs."assume-master".repo  = "assume";
  inputs."assume-master".type  = "github";
  inputs."assume-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assume-0_0_2".dir   = "0_0_2";
  inputs."assume-0_0_2".owner = "nim-nix-pkgs";
  inputs."assume-0_0_2".ref   = "master";
  inputs."assume-0_0_2".repo  = "assume";
  inputs."assume-0_0_2".type  = "github";
  inputs."assume-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assume-0_0_3".dir   = "0_0_3";
  inputs."assume-0_0_3".owner = "nim-nix-pkgs";
  inputs."assume-0_0_3".ref   = "master";
  inputs."assume-0_0_3".repo  = "assume";
  inputs."assume-0_0_3".type  = "github";
  inputs."assume-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assume-0_1_0".dir   = "0_1_0";
  inputs."assume-0_1_0".owner = "nim-nix-pkgs";
  inputs."assume-0_1_0".ref   = "master";
  inputs."assume-0_1_0".repo  = "assume";
  inputs."assume-0_1_0".type  = "github";
  inputs."assume-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assume-0_1_1".dir   = "0_1_1";
  inputs."assume-0_1_1".owner = "nim-nix-pkgs";
  inputs."assume-0_1_1".ref   = "master";
  inputs."assume-0_1_1".repo  = "assume";
  inputs."assume-0_1_1".type  = "github";
  inputs."assume-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assume-0_2_0".dir   = "0_2_0";
  inputs."assume-0_2_0".owner = "nim-nix-pkgs";
  inputs."assume-0_2_0".ref   = "master";
  inputs."assume-0_2_0".repo  = "assume";
  inputs."assume-0_2_0".type  = "github";
  inputs."assume-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assume-0_3_0".dir   = "0_3_0";
  inputs."assume-0_3_0".owner = "nim-nix-pkgs";
  inputs."assume-0_3_0".ref   = "master";
  inputs."assume-0_3_0".repo  = "assume";
  inputs."assume-0_3_0".type  = "github";
  inputs."assume-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assume-0_3_1".dir   = "0_3_1";
  inputs."assume-0_3_1".owner = "nim-nix-pkgs";
  inputs."assume-0_3_1".ref   = "master";
  inputs."assume-0_3_1".repo  = "assume";
  inputs."assume-0_3_1".type  = "github";
  inputs."assume-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assume-0_4_0".dir   = "0_4_0";
  inputs."assume-0_4_0".owner = "nim-nix-pkgs";
  inputs."assume-0_4_0".ref   = "master";
  inputs."assume-0_4_0".repo  = "assume";
  inputs."assume-0_4_0".type  = "github";
  inputs."assume-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assume-0_4_1".dir   = "0_4_1";
  inputs."assume-0_4_1".owner = "nim-nix-pkgs";
  inputs."assume-0_4_1".ref   = "master";
  inputs."assume-0_4_1".repo  = "assume";
  inputs."assume-0_4_1".type  = "github";
  inputs."assume-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."assume-0_5_0".dir   = "0_5_0";
  inputs."assume-0_5_0".owner = "nim-nix-pkgs";
  inputs."assume-0_5_0".ref   = "master";
  inputs."assume-0_5_0".repo  = "assume";
  inputs."assume-0_5_0".type  = "github";
  inputs."assume-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."assume-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
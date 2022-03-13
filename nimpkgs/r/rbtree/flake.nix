{
  description = ''Red/Black Trees'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rbtree-master".dir   = "master";
  inputs."rbtree-master".owner = "nim-nix-pkgs";
  inputs."rbtree-master".ref   = "master";
  inputs."rbtree-master".repo  = "rbtree";
  inputs."rbtree-master".type  = "github";
  inputs."rbtree-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rbtree-0_1_0".dir   = "0_1_0";
  inputs."rbtree-0_1_0".owner = "nim-nix-pkgs";
  inputs."rbtree-0_1_0".ref   = "master";
  inputs."rbtree-0_1_0".repo  = "rbtree";
  inputs."rbtree-0_1_0".type  = "github";
  inputs."rbtree-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rbtree-0_2_0".dir   = "0_2_0";
  inputs."rbtree-0_2_0".owner = "nim-nix-pkgs";
  inputs."rbtree-0_2_0".ref   = "master";
  inputs."rbtree-0_2_0".repo  = "rbtree";
  inputs."rbtree-0_2_0".type  = "github";
  inputs."rbtree-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rbtree-0_3_0".dir   = "0_3_0";
  inputs."rbtree-0_3_0".owner = "nim-nix-pkgs";
  inputs."rbtree-0_3_0".ref   = "master";
  inputs."rbtree-0_3_0".repo  = "rbtree";
  inputs."rbtree-0_3_0".type  = "github";
  inputs."rbtree-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rbtree-0_4_0".dir   = "0_4_0";
  inputs."rbtree-0_4_0".owner = "nim-nix-pkgs";
  inputs."rbtree-0_4_0".ref   = "master";
  inputs."rbtree-0_4_0".repo  = "rbtree";
  inputs."rbtree-0_4_0".type  = "github";
  inputs."rbtree-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rbtree-0_5_0".dir   = "0_5_0";
  inputs."rbtree-0_5_0".owner = "nim-nix-pkgs";
  inputs."rbtree-0_5_0".ref   = "master";
  inputs."rbtree-0_5_0".repo  = "rbtree";
  inputs."rbtree-0_5_0".type  = "github";
  inputs."rbtree-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbtree-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Simple AST in NIM'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."simpleast-develop".dir   = "develop";
  inputs."simpleast-develop".owner = "nim-nix-pkgs";
  inputs."simpleast-develop".ref   = "master";
  inputs."simpleast-develop".repo  = "simpleast";
  inputs."simpleast-develop".type  = "github";
  inputs."simpleast-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-master".dir   = "master";
  inputs."simpleast-master".owner = "nim-nix-pkgs";
  inputs."simpleast-master".ref   = "master";
  inputs."simpleast-master".repo  = "simpleast";
  inputs."simpleast-master".type  = "github";
  inputs."simpleast-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-0_0_0".dir   = "0_0_0";
  inputs."simpleast-0_0_0".owner = "nim-nix-pkgs";
  inputs."simpleast-0_0_0".ref   = "master";
  inputs."simpleast-0_0_0".repo  = "simpleast";
  inputs."simpleast-0_0_0".type  = "github";
  inputs."simpleast-0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-0_1_0".dir   = "0_1_0";
  inputs."simpleast-0_1_0".owner = "nim-nix-pkgs";
  inputs."simpleast-0_1_0".ref   = "master";
  inputs."simpleast-0_1_0".repo  = "simpleast";
  inputs."simpleast-0_1_0".type  = "github";
  inputs."simpleast-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-1_1_0".dir   = "1_1_0";
  inputs."simpleast-1_1_0".owner = "nim-nix-pkgs";
  inputs."simpleast-1_1_0".ref   = "master";
  inputs."simpleast-1_1_0".repo  = "simpleast";
  inputs."simpleast-1_1_0".type  = "github";
  inputs."simpleast-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-1_1_1".dir   = "1_1_1";
  inputs."simpleast-1_1_1".owner = "nim-nix-pkgs";
  inputs."simpleast-1_1_1".ref   = "master";
  inputs."simpleast-1_1_1".repo  = "simpleast";
  inputs."simpleast-1_1_1".type  = "github";
  inputs."simpleast-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-1_1_2".dir   = "1_1_2";
  inputs."simpleast-1_1_2".owner = "nim-nix-pkgs";
  inputs."simpleast-1_1_2".ref   = "master";
  inputs."simpleast-1_1_2".repo  = "simpleast";
  inputs."simpleast-1_1_2".type  = "github";
  inputs."simpleast-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-1_1_3".dir   = "1_1_3";
  inputs."simpleast-1_1_3".owner = "nim-nix-pkgs";
  inputs."simpleast-1_1_3".ref   = "master";
  inputs."simpleast-1_1_3".repo  = "simpleast";
  inputs."simpleast-1_1_3".type  = "github";
  inputs."simpleast-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-1_1_4".dir   = "1_1_4";
  inputs."simpleast-1_1_4".owner = "nim-nix-pkgs";
  inputs."simpleast-1_1_4".ref   = "master";
  inputs."simpleast-1_1_4".repo  = "simpleast";
  inputs."simpleast-1_1_4".type  = "github";
  inputs."simpleast-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-1_1_5".dir   = "1_1_5";
  inputs."simpleast-1_1_5".owner = "nim-nix-pkgs";
  inputs."simpleast-1_1_5".ref   = "master";
  inputs."simpleast-1_1_5".repo  = "simpleast";
  inputs."simpleast-1_1_5".type  = "github";
  inputs."simpleast-1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-1_1_6".dir   = "1_1_6";
  inputs."simpleast-1_1_6".owner = "nim-nix-pkgs";
  inputs."simpleast-1_1_6".ref   = "master";
  inputs."simpleast-1_1_6".repo  = "simpleast";
  inputs."simpleast-1_1_6".type  = "github";
  inputs."simpleast-1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleast-1_2_0".dir   = "1_2_0";
  inputs."simpleast-1_2_0".owner = "nim-nix-pkgs";
  inputs."simpleast-1_2_0".ref   = "master";
  inputs."simpleast-1_2_0".repo  = "simpleast";
  inputs."simpleast-1_2_0".type  = "github";
  inputs."simpleast-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleast-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
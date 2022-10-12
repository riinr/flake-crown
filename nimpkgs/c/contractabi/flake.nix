{
  description = ''ABI Encoding for Ethereum contracts'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."contractabi-main".dir   = "main";
  inputs."contractabi-main".owner = "nim-nix-pkgs";
  inputs."contractabi-main".ref   = "master";
  inputs."contractabi-main".repo  = "contractabi";
  inputs."contractabi-main".type  = "github";
  inputs."contractabi-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_1_0".dir   = "0_1_0";
  inputs."contractabi-0_1_0".owner = "nim-nix-pkgs";
  inputs."contractabi-0_1_0".ref   = "master";
  inputs."contractabi-0_1_0".repo  = "contractabi";
  inputs."contractabi-0_1_0".type  = "github";
  inputs."contractabi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_1_1".dir   = "0_1_1";
  inputs."contractabi-0_1_1".owner = "nim-nix-pkgs";
  inputs."contractabi-0_1_1".ref   = "master";
  inputs."contractabi-0_1_1".repo  = "contractabi";
  inputs."contractabi-0_1_1".type  = "github";
  inputs."contractabi-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_2_0".dir   = "0_2_0";
  inputs."contractabi-0_2_0".owner = "nim-nix-pkgs";
  inputs."contractabi-0_2_0".ref   = "master";
  inputs."contractabi-0_2_0".repo  = "contractabi";
  inputs."contractabi-0_2_0".type  = "github";
  inputs."contractabi-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_3_0".dir   = "0_3_0";
  inputs."contractabi-0_3_0".owner = "nim-nix-pkgs";
  inputs."contractabi-0_3_0".ref   = "master";
  inputs."contractabi-0_3_0".repo  = "contractabi";
  inputs."contractabi-0_3_0".type  = "github";
  inputs."contractabi-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_4_0".dir   = "0_4_0";
  inputs."contractabi-0_4_0".owner = "nim-nix-pkgs";
  inputs."contractabi-0_4_0".ref   = "master";
  inputs."contractabi-0_4_0".repo  = "contractabi";
  inputs."contractabi-0_4_0".type  = "github";
  inputs."contractabi-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_4_1".dir   = "0_4_1";
  inputs."contractabi-0_4_1".owner = "nim-nix-pkgs";
  inputs."contractabi-0_4_1".ref   = "master";
  inputs."contractabi-0_4_1".repo  = "contractabi";
  inputs."contractabi-0_4_1".type  = "github";
  inputs."contractabi-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_4_2".dir   = "0_4_2";
  inputs."contractabi-0_4_2".owner = "nim-nix-pkgs";
  inputs."contractabi-0_4_2".ref   = "master";
  inputs."contractabi-0_4_2".repo  = "contractabi";
  inputs."contractabi-0_4_2".type  = "github";
  inputs."contractabi-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_4_3".dir   = "0_4_3";
  inputs."contractabi-0_4_3".owner = "nim-nix-pkgs";
  inputs."contractabi-0_4_3".ref   = "master";
  inputs."contractabi-0_4_3".repo  = "contractabi";
  inputs."contractabi-0_4_3".type  = "github";
  inputs."contractabi-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_4_4".dir   = "0_4_4";
  inputs."contractabi-0_4_4".owner = "nim-nix-pkgs";
  inputs."contractabi-0_4_4".ref   = "master";
  inputs."contractabi-0_4_4".repo  = "contractabi";
  inputs."contractabi-0_4_4".type  = "github";
  inputs."contractabi-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_4_5".dir   = "0_4_5";
  inputs."contractabi-0_4_5".owner = "nim-nix-pkgs";
  inputs."contractabi-0_4_5".ref   = "master";
  inputs."contractabi-0_4_5".repo  = "contractabi";
  inputs."contractabi-0_4_5".type  = "github";
  inputs."contractabi-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."contractabi-0_4_6".dir   = "0_4_6";
  inputs."contractabi-0_4_6".owner = "nim-nix-pkgs";
  inputs."contractabi-0_4_6".ref   = "master";
  inputs."contractabi-0_4_6".repo  = "contractabi";
  inputs."contractabi-0_4_6".type  = "github";
  inputs."contractabi-0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contractabi-0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
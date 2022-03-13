{
  description = ''Transformer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."retranslator-master".dir   = "master";
  inputs."retranslator-master".owner = "nim-nix-pkgs";
  inputs."retranslator-master".ref   = "master";
  inputs."retranslator-master".repo  = "retranslator";
  inputs."retranslator-master".type  = "github";
  inputs."retranslator-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_3".dir   = "0_0_3";
  inputs."retranslator-0_0_3".owner = "nim-nix-pkgs";
  inputs."retranslator-0_0_3".ref   = "master";
  inputs."retranslator-0_0_3".repo  = "retranslator";
  inputs."retranslator-0_0_3".type  = "github";
  inputs."retranslator-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_4".dir   = "0_0_4";
  inputs."retranslator-0_0_4".owner = "nim-nix-pkgs";
  inputs."retranslator-0_0_4".ref   = "master";
  inputs."retranslator-0_0_4".repo  = "retranslator";
  inputs."retranslator-0_0_4".type  = "github";
  inputs."retranslator-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_5".dir   = "0_0_5";
  inputs."retranslator-0_0_5".owner = "nim-nix-pkgs";
  inputs."retranslator-0_0_5".ref   = "master";
  inputs."retranslator-0_0_5".repo  = "retranslator";
  inputs."retranslator-0_0_5".type  = "github";
  inputs."retranslator-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_6".dir   = "0_0_6";
  inputs."retranslator-0_0_6".owner = "nim-nix-pkgs";
  inputs."retranslator-0_0_6".ref   = "master";
  inputs."retranslator-0_0_6".repo  = "retranslator";
  inputs."retranslator-0_0_6".type  = "github";
  inputs."retranslator-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_7".dir   = "0_0_7";
  inputs."retranslator-0_0_7".owner = "nim-nix-pkgs";
  inputs."retranslator-0_0_7".ref   = "master";
  inputs."retranslator-0_0_7".repo  = "retranslator";
  inputs."retranslator-0_0_7".type  = "github";
  inputs."retranslator-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_0_8".dir   = "0_0_8";
  inputs."retranslator-0_0_8".owner = "nim-nix-pkgs";
  inputs."retranslator-0_0_8".ref   = "master";
  inputs."retranslator-0_0_8".repo  = "retranslator";
  inputs."retranslator-0_0_8".type  = "github";
  inputs."retranslator-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_1_0".dir   = "0_1_0";
  inputs."retranslator-0_1_0".owner = "nim-nix-pkgs";
  inputs."retranslator-0_1_0".ref   = "master";
  inputs."retranslator-0_1_0".repo  = "retranslator";
  inputs."retranslator-0_1_0".type  = "github";
  inputs."retranslator-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_2_0".dir   = "0_2_0";
  inputs."retranslator-0_2_0".owner = "nim-nix-pkgs";
  inputs."retranslator-0_2_0".ref   = "master";
  inputs."retranslator-0_2_0".repo  = "retranslator";
  inputs."retranslator-0_2_0".type  = "github";
  inputs."retranslator-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_2_1".dir   = "0_2_1";
  inputs."retranslator-0_2_1".owner = "nim-nix-pkgs";
  inputs."retranslator-0_2_1".ref   = "master";
  inputs."retranslator-0_2_1".repo  = "retranslator";
  inputs."retranslator-0_2_1".type  = "github";
  inputs."retranslator-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_2_2".dir   = "0_2_2";
  inputs."retranslator-0_2_2".owner = "nim-nix-pkgs";
  inputs."retranslator-0_2_2".ref   = "master";
  inputs."retranslator-0_2_2".repo  = "retranslator";
  inputs."retranslator-0_2_2".type  = "github";
  inputs."retranslator-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_3_0".dir   = "0_3_0";
  inputs."retranslator-0_3_0".owner = "nim-nix-pkgs";
  inputs."retranslator-0_3_0".ref   = "master";
  inputs."retranslator-0_3_0".repo  = "retranslator";
  inputs."retranslator-0_3_0".type  = "github";
  inputs."retranslator-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_3_1".dir   = "0_3_1";
  inputs."retranslator-0_3_1".owner = "nim-nix-pkgs";
  inputs."retranslator-0_3_1".ref   = "master";
  inputs."retranslator-0_3_1".repo  = "retranslator";
  inputs."retranslator-0_3_1".type  = "github";
  inputs."retranslator-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_3_2".dir   = "0_3_2";
  inputs."retranslator-0_3_2".owner = "nim-nix-pkgs";
  inputs."retranslator-0_3_2".ref   = "master";
  inputs."retranslator-0_3_2".repo  = "retranslator";
  inputs."retranslator-0_3_2".type  = "github";
  inputs."retranslator-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_3_3".dir   = "0_3_3";
  inputs."retranslator-0_3_3".owner = "nim-nix-pkgs";
  inputs."retranslator-0_3_3".ref   = "master";
  inputs."retranslator-0_3_3".repo  = "retranslator";
  inputs."retranslator-0_3_3".type  = "github";
  inputs."retranslator-0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."retranslator-0_3_4".dir   = "0_3_4";
  inputs."retranslator-0_3_4".owner = "nim-nix-pkgs";
  inputs."retranslator-0_3_4".ref   = "master";
  inputs."retranslator-0_3_4".repo  = "retranslator";
  inputs."retranslator-0_3_4".type  = "github";
  inputs."retranslator-0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."retranslator-0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
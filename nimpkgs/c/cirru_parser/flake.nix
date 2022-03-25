{
  description = ''Parser for Cirru syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cirru_parser-master".dir   = "master";
  inputs."cirru_parser-master".owner = "nim-nix-pkgs";
  inputs."cirru_parser-master".ref   = "master";
  inputs."cirru_parser-master".repo  = "cirru_parser";
  inputs."cirru_parser-master".type  = "github";
  inputs."cirru_parser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirruparser-0_0_5".dir   = "0_0_5";
  inputs."cirruparser-0_0_5".owner = "nim-nix-pkgs";
  inputs."cirruparser-0_0_5".ref   = "master";
  inputs."cirruparser-0_0_5".repo  = "cirruparser";
  inputs."cirruparser-0_0_5".type  = "github";
  inputs."cirruparser-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirruparser-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirruparser-v0_0_1".dir   = "v0_0_1";
  inputs."cirruparser-v0_0_1".owner = "nim-nix-pkgs";
  inputs."cirruparser-v0_0_1".ref   = "master";
  inputs."cirruparser-v0_0_1".repo  = "cirruparser";
  inputs."cirruparser-v0_0_1".type  = "github";
  inputs."cirruparser-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirruparser-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirruparser-v0_0_2".dir   = "v0_0_2";
  inputs."cirruparser-v0_0_2".owner = "nim-nix-pkgs";
  inputs."cirruparser-v0_0_2".ref   = "master";
  inputs."cirruparser-v0_0_2".repo  = "cirruparser";
  inputs."cirruparser-v0_0_2".type  = "github";
  inputs."cirruparser-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirruparser-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirruparser-v0_0_3".dir   = "v0_0_3";
  inputs."cirruparser-v0_0_3".owner = "nim-nix-pkgs";
  inputs."cirruparser-v0_0_3".ref   = "master";
  inputs."cirruparser-v0_0_3".repo  = "cirruparser";
  inputs."cirruparser-v0_0_3".type  = "github";
  inputs."cirruparser-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirruparser-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirruparser-v0_0_4".dir   = "v0_0_4";
  inputs."cirruparser-v0_0_4".owner = "nim-nix-pkgs";
  inputs."cirruparser-v0_0_4".ref   = "master";
  inputs."cirruparser-v0_0_4".repo  = "cirruparser";
  inputs."cirruparser-v0_0_4".type  = "github";
  inputs."cirruparser-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirruparser-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirruparser-v0_0_5".dir   = "v0_0_5";
  inputs."cirruparser-v0_0_5".owner = "nim-nix-pkgs";
  inputs."cirruparser-v0_0_5".ref   = "master";
  inputs."cirruparser-v0_0_5".repo  = "cirruparser";
  inputs."cirruparser-v0_0_5".type  = "github";
  inputs."cirruparser-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirruparser-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirruparser-v0_1_0".dir   = "v0_1_0";
  inputs."cirruparser-v0_1_0".owner = "nim-nix-pkgs";
  inputs."cirruparser-v0_1_0".ref   = "master";
  inputs."cirruparser-v0_1_0".repo  = "cirruparser";
  inputs."cirruparser-v0_1_0".type  = "github";
  inputs."cirruparser-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirruparser-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirruparser-v0_1_1".dir   = "v0_1_1";
  inputs."cirruparser-v0_1_1".owner = "nim-nix-pkgs";
  inputs."cirruparser-v0_1_1".ref   = "master";
  inputs."cirruparser-v0_1_1".repo  = "cirruparser";
  inputs."cirruparser-v0_1_1".type  = "github";
  inputs."cirruparser-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirruparser-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirruparser-v0_1_2".dir   = "v0_1_2";
  inputs."cirruparser-v0_1_2".owner = "nim-nix-pkgs";
  inputs."cirruparser-v0_1_2".ref   = "master";
  inputs."cirruparser-v0_1_2".repo  = "cirruparser";
  inputs."cirruparser-v0_1_2".type  = "github";
  inputs."cirruparser-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirruparser-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirruparser-v0_1_3".dir   = "v0_1_3";
  inputs."cirruparser-v0_1_3".owner = "nim-nix-pkgs";
  inputs."cirruparser-v0_1_3".ref   = "master";
  inputs."cirruparser-v0_1_3".repo  = "cirruparser";
  inputs."cirruparser-v0_1_3".type  = "github";
  inputs."cirruparser-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirruparser-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_parser-v0_1_4".dir   = "v0_1_4";
  inputs."cirru_parser-v0_1_4".owner = "nim-nix-pkgs";
  inputs."cirru_parser-v0_1_4".ref   = "master";
  inputs."cirru_parser-v0_1_4".repo  = "cirru_parser";
  inputs."cirru_parser-v0_1_4".type  = "github";
  inputs."cirru_parser-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_parser-v0_2_0".dir   = "v0_2_0";
  inputs."cirru_parser-v0_2_0".owner = "nim-nix-pkgs";
  inputs."cirru_parser-v0_2_0".ref   = "master";
  inputs."cirru_parser-v0_2_0".repo  = "cirru_parser";
  inputs."cirru_parser-v0_2_0".type  = "github";
  inputs."cirru_parser-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_parser-v0_2_1".dir   = "v0_2_1";
  inputs."cirru_parser-v0_2_1".owner = "nim-nix-pkgs";
  inputs."cirru_parser-v0_2_1".ref   = "master";
  inputs."cirru_parser-v0_2_1".repo  = "cirru_parser";
  inputs."cirru_parser-v0_2_1".type  = "github";
  inputs."cirru_parser-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_parser-v0_2_2".dir   = "v0_2_2";
  inputs."cirru_parser-v0_2_2".owner = "nim-nix-pkgs";
  inputs."cirru_parser-v0_2_2".ref   = "master";
  inputs."cirru_parser-v0_2_2".repo  = "cirru_parser";
  inputs."cirru_parser-v0_2_2".type  = "github";
  inputs."cirru_parser-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_parser-v0_2_3".dir   = "v0_2_3";
  inputs."cirru_parser-v0_2_3".owner = "nim-nix-pkgs";
  inputs."cirru_parser-v0_2_3".ref   = "master";
  inputs."cirru_parser-v0_2_3".repo  = "cirru_parser";
  inputs."cirru_parser-v0_2_3".type  = "github";
  inputs."cirru_parser-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_parser-v0_2_4".dir   = "v0_2_4";
  inputs."cirru_parser-v0_2_4".owner = "nim-nix-pkgs";
  inputs."cirru_parser-v0_2_4".ref   = "master";
  inputs."cirru_parser-v0_2_4".repo  = "cirru_parser";
  inputs."cirru_parser-v0_2_4".type  = "github";
  inputs."cirru_parser-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cirru_parser-v0_3_0".dir   = "v0_3_0";
  inputs."cirru_parser-v0_3_0".owner = "nim-nix-pkgs";
  inputs."cirru_parser-v0_3_0".ref   = "master";
  inputs."cirru_parser-v0_3_0".repo  = "cirru_parser";
  inputs."cirru_parser-v0_3_0".type  = "github";
  inputs."cirru_parser-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cirru_parser-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
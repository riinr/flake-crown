{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hastysite-master".dir   = "master";
  inputs."hastysite-master".owner = "nim-nix-pkgs";
  inputs."hastysite-master".ref   = "master";
  inputs."hastysite-master".repo  = "hastysite";
  inputs."hastysite-master".type  = "github";
  inputs."hastysite-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-0_1_0".dir   = "0_1_0";
  inputs."hastysite-0_1_0".owner = "nim-nix-pkgs";
  inputs."hastysite-0_1_0".ref   = "master";
  inputs."hastysite-0_1_0".repo  = "hastysite";
  inputs."hastysite-0_1_0".type  = "github";
  inputs."hastysite-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_0_0".dir   = "v1_0_0";
  inputs."hastysite-v1_0_0".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_0_0".ref   = "master";
  inputs."hastysite-v1_0_0".repo  = "hastysite";
  inputs."hastysite-v1_0_0".type  = "github";
  inputs."hastysite-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_0_1".dir   = "v1_0_1";
  inputs."hastysite-v1_0_1".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_0_1".ref   = "master";
  inputs."hastysite-v1_0_1".repo  = "hastysite";
  inputs."hastysite-v1_0_1".type  = "github";
  inputs."hastysite-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_1_0".dir   = "v1_1_0";
  inputs."hastysite-v1_1_0".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_1_0".ref   = "master";
  inputs."hastysite-v1_1_0".repo  = "hastysite";
  inputs."hastysite-v1_1_0".type  = "github";
  inputs."hastysite-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_2_0".dir   = "v1_2_0";
  inputs."hastysite-v1_2_0".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_2_0".ref   = "master";
  inputs."hastysite-v1_2_0".repo  = "hastysite";
  inputs."hastysite-v1_2_0".type  = "github";
  inputs."hastysite-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_2_1".dir   = "v1_2_1";
  inputs."hastysite-v1_2_1".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_2_1".ref   = "master";
  inputs."hastysite-v1_2_1".repo  = "hastysite";
  inputs."hastysite-v1_2_1".type  = "github";
  inputs."hastysite-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_2_2".dir   = "v1_2_2";
  inputs."hastysite-v1_2_2".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_2_2".ref   = "master";
  inputs."hastysite-v1_2_2".repo  = "hastysite";
  inputs."hastysite-v1_2_2".type  = "github";
  inputs."hastysite-v1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_0".dir   = "v1_3_0";
  inputs."hastysite-v1_3_0".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_3_0".ref   = "master";
  inputs."hastysite-v1_3_0".repo  = "hastysite";
  inputs."hastysite-v1_3_0".type  = "github";
  inputs."hastysite-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_1".dir   = "v1_3_1";
  inputs."hastysite-v1_3_1".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_3_1".ref   = "master";
  inputs."hastysite-v1_3_1".repo  = "hastysite";
  inputs."hastysite-v1_3_1".type  = "github";
  inputs."hastysite-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_2".dir   = "v1_3_2";
  inputs."hastysite-v1_3_2".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_3_2".ref   = "master";
  inputs."hastysite-v1_3_2".repo  = "hastysite";
  inputs."hastysite-v1_3_2".type  = "github";
  inputs."hastysite-v1_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_3".dir   = "v1_3_3";
  inputs."hastysite-v1_3_3".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_3_3".ref   = "master";
  inputs."hastysite-v1_3_3".repo  = "hastysite";
  inputs."hastysite-v1_3_3".type  = "github";
  inputs."hastysite-v1_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_4".dir   = "v1_3_4";
  inputs."hastysite-v1_3_4".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_3_4".ref   = "master";
  inputs."hastysite-v1_3_4".repo  = "hastysite";
  inputs."hastysite-v1_3_4".type  = "github";
  inputs."hastysite-v1_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_5".dir   = "v1_3_5";
  inputs."hastysite-v1_3_5".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_3_5".ref   = "master";
  inputs."hastysite-v1_3_5".repo  = "hastysite";
  inputs."hastysite-v1_3_5".type  = "github";
  inputs."hastysite-v1_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_6".dir   = "v1_3_6";
  inputs."hastysite-v1_3_6".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_3_6".ref   = "master";
  inputs."hastysite-v1_3_6".repo  = "hastysite";
  inputs."hastysite-v1_3_6".type  = "github";
  inputs."hastysite-v1_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hastysite-v1_3_7".dir   = "v1_3_7";
  inputs."hastysite-v1_3_7".owner = "nim-nix-pkgs";
  inputs."hastysite-v1_3_7".ref   = "master";
  inputs."hastysite-v1_3_7".repo  = "hastysite";
  inputs."hastysite-v1_3_7".type  = "github";
  inputs."hastysite-v1_3_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hastysite-v1_3_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
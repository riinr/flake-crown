{
  description = ''Serializer and tools for flat binary files.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."flatty-master".dir   = "master";
  inputs."flatty-master".owner = "nim-nix-pkgs";
  inputs."flatty-master".ref   = "master";
  inputs."flatty-master".repo  = "flatty";
  inputs."flatty-master".type  = "github";
  inputs."flatty-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_1_0".dir   = "0_1_0";
  inputs."flatty-0_1_0".owner = "nim-nix-pkgs";
  inputs."flatty-0_1_0".ref   = "master";
  inputs."flatty-0_1_0".repo  = "flatty";
  inputs."flatty-0_1_0".type  = "github";
  inputs."flatty-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_1_1".dir   = "0_1_1";
  inputs."flatty-0_1_1".owner = "nim-nix-pkgs";
  inputs."flatty-0_1_1".ref   = "master";
  inputs."flatty-0_1_1".repo  = "flatty";
  inputs."flatty-0_1_1".type  = "github";
  inputs."flatty-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_1_2".dir   = "0_1_2";
  inputs."flatty-0_1_2".owner = "nim-nix-pkgs";
  inputs."flatty-0_1_2".ref   = "master";
  inputs."flatty-0_1_2".repo  = "flatty";
  inputs."flatty-0_1_2".type  = "github";
  inputs."flatty-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_1_3".dir   = "0_1_3";
  inputs."flatty-0_1_3".owner = "nim-nix-pkgs";
  inputs."flatty-0_1_3".ref   = "master";
  inputs."flatty-0_1_3".repo  = "flatty";
  inputs."flatty-0_1_3".type  = "github";
  inputs."flatty-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_1_4".dir   = "0_1_4";
  inputs."flatty-0_1_4".owner = "nim-nix-pkgs";
  inputs."flatty-0_1_4".ref   = "master";
  inputs."flatty-0_1_4".repo  = "flatty";
  inputs."flatty-0_1_4".type  = "github";
  inputs."flatty-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_1_5".dir   = "0_1_5";
  inputs."flatty-0_1_5".owner = "nim-nix-pkgs";
  inputs."flatty-0_1_5".ref   = "master";
  inputs."flatty-0_1_5".repo  = "flatty";
  inputs."flatty-0_1_5".type  = "github";
  inputs."flatty-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_2_0".dir   = "0_2_0";
  inputs."flatty-0_2_0".owner = "nim-nix-pkgs";
  inputs."flatty-0_2_0".ref   = "master";
  inputs."flatty-0_2_0".repo  = "flatty";
  inputs."flatty-0_2_0".type  = "github";
  inputs."flatty-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_2_1".dir   = "0_2_1";
  inputs."flatty-0_2_1".owner = "nim-nix-pkgs";
  inputs."flatty-0_2_1".ref   = "master";
  inputs."flatty-0_2_1".repo  = "flatty";
  inputs."flatty-0_2_1".type  = "github";
  inputs."flatty-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_2_2".dir   = "0_2_2";
  inputs."flatty-0_2_2".owner = "nim-nix-pkgs";
  inputs."flatty-0_2_2".ref   = "master";
  inputs."flatty-0_2_2".repo  = "flatty";
  inputs."flatty-0_2_2".type  = "github";
  inputs."flatty-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_2_3".dir   = "0_2_3";
  inputs."flatty-0_2_3".owner = "nim-nix-pkgs";
  inputs."flatty-0_2_3".ref   = "master";
  inputs."flatty-0_2_3".repo  = "flatty";
  inputs."flatty-0_2_3".type  = "github";
  inputs."flatty-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty-0_2_4".dir   = "0_2_4";
  inputs."flatty-0_2_4".owner = "nim-nix-pkgs";
  inputs."flatty-0_2_4".ref   = "master";
  inputs."flatty-0_2_4".repo  = "flatty";
  inputs."flatty-0_2_4".type  = "github";
  inputs."flatty-0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty-0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
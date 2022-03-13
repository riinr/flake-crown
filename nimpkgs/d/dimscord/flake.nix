{
  description = ''A Discord Bot & REST Library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dimscord-master".dir   = "master";
  inputs."dimscord-master".owner = "nim-nix-pkgs";
  inputs."dimscord-master".ref   = "master";
  inputs."dimscord-master".repo  = "dimscord";
  inputs."dimscord-master".type  = "github";
  inputs."dimscord-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_0_0".dir   = "v1_0_0";
  inputs."dimscord-v1_0_0".owner = "nim-nix-pkgs";
  inputs."dimscord-v1_0_0".ref   = "master";
  inputs."dimscord-v1_0_0".repo  = "dimscord";
  inputs."dimscord-v1_0_0".type  = "github";
  inputs."dimscord-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_0_1".dir   = "v1_0_1";
  inputs."dimscord-v1_0_1".owner = "nim-nix-pkgs";
  inputs."dimscord-v1_0_1".ref   = "master";
  inputs."dimscord-v1_0_1".repo  = "dimscord";
  inputs."dimscord-v1_0_1".type  = "github";
  inputs."dimscord-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_0_6".dir   = "v1_0_6";
  inputs."dimscord-v1_0_6".owner = "nim-nix-pkgs";
  inputs."dimscord-v1_0_6".ref   = "master";
  inputs."dimscord-v1_0_6".repo  = "dimscord";
  inputs."dimscord-v1_0_6".type  = "github";
  inputs."dimscord-v1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_0_7".dir   = "v1_0_7";
  inputs."dimscord-v1_0_7".owner = "nim-nix-pkgs";
  inputs."dimscord-v1_0_7".ref   = "master";
  inputs."dimscord-v1_0_7".repo  = "dimscord";
  inputs."dimscord-v1_0_7".type  = "github";
  inputs."dimscord-v1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_2_0".dir   = "v1_2_0";
  inputs."dimscord-v1_2_0".owner = "nim-nix-pkgs";
  inputs."dimscord-v1_2_0".ref   = "master";
  inputs."dimscord-v1_2_0".repo  = "dimscord";
  inputs."dimscord-v1_2_0".type  = "github";
  inputs."dimscord-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_2_1".dir   = "v1_2_1";
  inputs."dimscord-v1_2_1".owner = "nim-nix-pkgs";
  inputs."dimscord-v1_2_1".ref   = "master";
  inputs."dimscord-v1_2_1".repo  = "dimscord";
  inputs."dimscord-v1_2_1".type  = "github";
  inputs."dimscord-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_2_4".dir   = "v1_2_4";
  inputs."dimscord-v1_2_4".owner = "nim-nix-pkgs";
  inputs."dimscord-v1_2_4".ref   = "master";
  inputs."dimscord-v1_2_4".repo  = "dimscord";
  inputs."dimscord-v1_2_4".type  = "github";
  inputs."dimscord-v1_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_2_5".dir   = "v1_2_5";
  inputs."dimscord-v1_2_5".owner = "nim-nix-pkgs";
  inputs."dimscord-v1_2_5".ref   = "master";
  inputs."dimscord-v1_2_5".repo  = "dimscord";
  inputs."dimscord-v1_2_5".type  = "github";
  inputs."dimscord-v1_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscord-v1_3_0".dir   = "v1_3_0";
  inputs."dimscord-v1_3_0".owner = "nim-nix-pkgs";
  inputs."dimscord-v1_3_0".ref   = "master";
  inputs."dimscord-v1_3_0".repo  = "dimscord";
  inputs."dimscord-v1_3_0".type  = "github";
  inputs."dimscord-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
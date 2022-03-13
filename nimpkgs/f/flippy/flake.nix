{
  description = ''Flippy is a simple 2d image and drawing library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."flippy-master".dir   = "master";
  inputs."flippy-master".owner = "nim-nix-pkgs";
  inputs."flippy-master".ref   = "master";
  inputs."flippy-master".repo  = "flippy";
  inputs."flippy-master".type  = "github";
  inputs."flippy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_0".dir   = "0_4_0";
  inputs."flippy-0_4_0".owner = "nim-nix-pkgs";
  inputs."flippy-0_4_0".ref   = "master";
  inputs."flippy-0_4_0".repo  = "flippy";
  inputs."flippy-0_4_0".type  = "github";
  inputs."flippy-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_1".dir   = "0_4_1";
  inputs."flippy-0_4_1".owner = "nim-nix-pkgs";
  inputs."flippy-0_4_1".ref   = "master";
  inputs."flippy-0_4_1".repo  = "flippy";
  inputs."flippy-0_4_1".type  = "github";
  inputs."flippy-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_2".dir   = "0_4_2";
  inputs."flippy-0_4_2".owner = "nim-nix-pkgs";
  inputs."flippy-0_4_2".ref   = "master";
  inputs."flippy-0_4_2".repo  = "flippy";
  inputs."flippy-0_4_2".type  = "github";
  inputs."flippy-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_3".dir   = "0_4_3";
  inputs."flippy-0_4_3".owner = "nim-nix-pkgs";
  inputs."flippy-0_4_3".ref   = "master";
  inputs."flippy-0_4_3".repo  = "flippy";
  inputs."flippy-0_4_3".type  = "github";
  inputs."flippy-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_4".dir   = "0_4_4";
  inputs."flippy-0_4_4".owner = "nim-nix-pkgs";
  inputs."flippy-0_4_4".ref   = "master";
  inputs."flippy-0_4_4".repo  = "flippy";
  inputs."flippy-0_4_4".type  = "github";
  inputs."flippy-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_5".dir   = "0_4_5";
  inputs."flippy-0_4_5".owner = "nim-nix-pkgs";
  inputs."flippy-0_4_5".ref   = "master";
  inputs."flippy-0_4_5".repo  = "flippy";
  inputs."flippy-0_4_5".type  = "github";
  inputs."flippy-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_6".dir   = "0_4_6";
  inputs."flippy-0_4_6".owner = "nim-nix-pkgs";
  inputs."flippy-0_4_6".ref   = "master";
  inputs."flippy-0_4_6".repo  = "flippy";
  inputs."flippy-0_4_6".type  = "github";
  inputs."flippy-0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-0_4_7".dir   = "0_4_7";
  inputs."flippy-0_4_7".owner = "nim-nix-pkgs";
  inputs."flippy-0_4_7".ref   = "master";
  inputs."flippy-0_4_7".repo  = "flippy";
  inputs."flippy-0_4_7".type  = "github";
  inputs."flippy-0_4_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-0_4_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flippy-v0_4_1".dir   = "v0_4_1";
  inputs."flippy-v0_4_1".owner = "nim-nix-pkgs";
  inputs."flippy-v0_4_1".ref   = "master";
  inputs."flippy-v0_4_1".repo  = "flippy";
  inputs."flippy-v0_4_1".type  = "github";
  inputs."flippy-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flippy-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
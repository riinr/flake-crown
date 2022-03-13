{
  description = ''Fetch url resources via HTTP and HTTPS.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."puppy-master".dir   = "master";
  inputs."puppy-master".owner = "nim-nix-pkgs";
  inputs."puppy-master".ref   = "master";
  inputs."puppy-master".repo  = "puppy";
  inputs."puppy-master".type  = "github";
  inputs."puppy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_0_0".dir   = "1_0_0";
  inputs."puppy-1_0_0".owner = "nim-nix-pkgs";
  inputs."puppy-1_0_0".ref   = "master";
  inputs."puppy-1_0_0".repo  = "puppy";
  inputs."puppy-1_0_0".type  = "github";
  inputs."puppy-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_0_1".dir   = "1_0_1";
  inputs."puppy-1_0_1".owner = "nim-nix-pkgs";
  inputs."puppy-1_0_1".ref   = "master";
  inputs."puppy-1_0_1".repo  = "puppy";
  inputs."puppy-1_0_1".type  = "github";
  inputs."puppy-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_0_2".dir   = "1_0_2";
  inputs."puppy-1_0_2".owner = "nim-nix-pkgs";
  inputs."puppy-1_0_2".ref   = "master";
  inputs."puppy-1_0_2".repo  = "puppy";
  inputs."puppy-1_0_2".type  = "github";
  inputs."puppy-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_0_3".dir   = "1_0_3";
  inputs."puppy-1_0_3".owner = "nim-nix-pkgs";
  inputs."puppy-1_0_3".ref   = "master";
  inputs."puppy-1_0_3".repo  = "puppy";
  inputs."puppy-1_0_3".type  = "github";
  inputs."puppy-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_0_4".dir   = "1_0_4";
  inputs."puppy-1_0_4".owner = "nim-nix-pkgs";
  inputs."puppy-1_0_4".ref   = "master";
  inputs."puppy-1_0_4".repo  = "puppy";
  inputs."puppy-1_0_4".type  = "github";
  inputs."puppy-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_0_5".dir   = "1_0_5";
  inputs."puppy-1_0_5".owner = "nim-nix-pkgs";
  inputs."puppy-1_0_5".ref   = "master";
  inputs."puppy-1_0_5".repo  = "puppy";
  inputs."puppy-1_0_5".type  = "github";
  inputs."puppy-1_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_0_6".dir   = "1_0_6";
  inputs."puppy-1_0_6".owner = "nim-nix-pkgs";
  inputs."puppy-1_0_6".ref   = "master";
  inputs."puppy-1_0_6".repo  = "puppy";
  inputs."puppy-1_0_6".type  = "github";
  inputs."puppy-1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_1_0".dir   = "1_1_0";
  inputs."puppy-1_1_0".owner = "nim-nix-pkgs";
  inputs."puppy-1_1_0".ref   = "master";
  inputs."puppy-1_1_0".repo  = "puppy";
  inputs."puppy-1_1_0".type  = "github";
  inputs."puppy-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_2_0".dir   = "1_2_0";
  inputs."puppy-1_2_0".owner = "nim-nix-pkgs";
  inputs."puppy-1_2_0".ref   = "master";
  inputs."puppy-1_2_0".repo  = "puppy";
  inputs."puppy-1_2_0".type  = "github";
  inputs."puppy-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_2_1".dir   = "1_2_1";
  inputs."puppy-1_2_1".owner = "nim-nix-pkgs";
  inputs."puppy-1_2_1".ref   = "master";
  inputs."puppy-1_2_1".repo  = "puppy";
  inputs."puppy-1_2_1".type  = "github";
  inputs."puppy-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_3_0".dir   = "1_3_0";
  inputs."puppy-1_3_0".owner = "nim-nix-pkgs";
  inputs."puppy-1_3_0".ref   = "master";
  inputs."puppy-1_3_0".repo  = "puppy";
  inputs."puppy-1_3_0".type  = "github";
  inputs."puppy-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_4_0".dir   = "1_4_0";
  inputs."puppy-1_4_0".owner = "nim-nix-pkgs";
  inputs."puppy-1_4_0".ref   = "master";
  inputs."puppy-1_4_0".repo  = "puppy";
  inputs."puppy-1_4_0".type  = "github";
  inputs."puppy-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_5_0".dir   = "1_5_0";
  inputs."puppy-1_5_0".owner = "nim-nix-pkgs";
  inputs."puppy-1_5_0".ref   = "master";
  inputs."puppy-1_5_0".repo  = "puppy";
  inputs."puppy-1_5_0".type  = "github";
  inputs."puppy-1_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_5_1".dir   = "1_5_1";
  inputs."puppy-1_5_1".owner = "nim-nix-pkgs";
  inputs."puppy-1_5_1".ref   = "master";
  inputs."puppy-1_5_1".repo  = "puppy";
  inputs."puppy-1_5_1".type  = "github";
  inputs."puppy-1_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_5_2".dir   = "1_5_2";
  inputs."puppy-1_5_2".owner = "nim-nix-pkgs";
  inputs."puppy-1_5_2".ref   = "master";
  inputs."puppy-1_5_2".repo  = "puppy";
  inputs."puppy-1_5_2".type  = "github";
  inputs."puppy-1_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy-1_5_3".dir   = "1_5_3";
  inputs."puppy-1_5_3".owner = "nim-nix-pkgs";
  inputs."puppy-1_5_3".ref   = "master";
  inputs."puppy-1_5_3".repo  = "puppy";
  inputs."puppy-1_5_3".type  = "github";
  inputs."puppy-1_5_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy-1_5_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
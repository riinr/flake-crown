{
  description = ''Perlin noise and Simplex noise generation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."perlin-master".dir   = "master";
  inputs."perlin-master".owner = "nim-nix-pkgs";
  inputs."perlin-master".ref   = "master";
  inputs."perlin-master".repo  = "perlin";
  inputs."perlin-master".type  = "github";
  inputs."perlin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."perlin-0_1_0".dir   = "0_1_0";
  inputs."perlin-0_1_0".owner = "nim-nix-pkgs";
  inputs."perlin-0_1_0".ref   = "master";
  inputs."perlin-0_1_0".repo  = "perlin";
  inputs."perlin-0_1_0".type  = "github";
  inputs."perlin-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."perlin-0_2_0".dir   = "0_2_0";
  inputs."perlin-0_2_0".owner = "nim-nix-pkgs";
  inputs."perlin-0_2_0".ref   = "master";
  inputs."perlin-0_2_0".repo  = "perlin";
  inputs."perlin-0_2_0".type  = "github";
  inputs."perlin-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."perlin-0_3_0".dir   = "0_3_0";
  inputs."perlin-0_3_0".owner = "nim-nix-pkgs";
  inputs."perlin-0_3_0".ref   = "master";
  inputs."perlin-0_3_0".repo  = "perlin";
  inputs."perlin-0_3_0".type  = "github";
  inputs."perlin-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."perlin-0_4_0".dir   = "0_4_0";
  inputs."perlin-0_4_0".owner = "nim-nix-pkgs";
  inputs."perlin-0_4_0".ref   = "master";
  inputs."perlin-0_4_0".repo  = "perlin";
  inputs."perlin-0_4_0".type  = "github";
  inputs."perlin-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."perlin-0_5_0".dir   = "0_5_0";
  inputs."perlin-0_5_0".owner = "nim-nix-pkgs";
  inputs."perlin-0_5_0".ref   = "master";
  inputs."perlin-0_5_0".repo  = "perlin";
  inputs."perlin-0_5_0".type  = "github";
  inputs."perlin-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."perlin-0_6_0".dir   = "0_6_0";
  inputs."perlin-0_6_0".owner = "nim-nix-pkgs";
  inputs."perlin-0_6_0".ref   = "master";
  inputs."perlin-0_6_0".repo  = "perlin";
  inputs."perlin-0_6_0".type  = "github";
  inputs."perlin-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."perlin-0_6_1".dir   = "0_6_1";
  inputs."perlin-0_6_1".owner = "nim-nix-pkgs";
  inputs."perlin-0_6_1".ref   = "master";
  inputs."perlin-0_6_1".repo  = "perlin";
  inputs."perlin-0_6_1".type  = "github";
  inputs."perlin-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."perlin-0_7_0".dir   = "0_7_0";
  inputs."perlin-0_7_0".owner = "nim-nix-pkgs";
  inputs."perlin-0_7_0".ref   = "master";
  inputs."perlin-0_7_0".repo  = "perlin";
  inputs."perlin-0_7_0".type  = "github";
  inputs."perlin-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."perlin-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
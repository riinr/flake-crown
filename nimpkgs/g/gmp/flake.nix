{
  description = ''wrapper for the GNU multiple precision arithmetic library (GMP)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gmp-master".dir   = "master";
  inputs."gmp-master".owner = "nim-nix-pkgs";
  inputs."gmp-master".ref   = "master";
  inputs."gmp-master".repo  = "gmp";
  inputs."gmp-master".type  = "github";
  inputs."gmp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-0_1_1".dir   = "0_1_1";
  inputs."gmp-0_1_1".owner = "nim-nix-pkgs";
  inputs."gmp-0_1_1".ref   = "master";
  inputs."gmp-0_1_1".repo  = "gmp";
  inputs."gmp-0_1_1".type  = "github";
  inputs."gmp-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-v0_2_1".dir   = "v0_2_1";
  inputs."gmp-v0_2_1".owner = "nim-nix-pkgs";
  inputs."gmp-v0_2_1".ref   = "master";
  inputs."gmp-v0_2_1".repo  = "gmp";
  inputs."gmp-v0_2_1".type  = "github";
  inputs."gmp-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-v0_2_2".dir   = "v0_2_2";
  inputs."gmp-v0_2_2".owner = "nim-nix-pkgs";
  inputs."gmp-v0_2_2".ref   = "master";
  inputs."gmp-v0_2_2".repo  = "gmp";
  inputs."gmp-v0_2_2".type  = "github";
  inputs."gmp-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-v0_2_3".dir   = "v0_2_3";
  inputs."gmp-v0_2_3".owner = "nim-nix-pkgs";
  inputs."gmp-v0_2_3".ref   = "master";
  inputs."gmp-v0_2_3".repo  = "gmp";
  inputs."gmp-v0_2_3".type  = "github";
  inputs."gmp-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-v0_2_4".dir   = "v0_2_4";
  inputs."gmp-v0_2_4".owner = "nim-nix-pkgs";
  inputs."gmp-v0_2_4".ref   = "master";
  inputs."gmp-v0_2_4".repo  = "gmp";
  inputs."gmp-v0_2_4".type  = "github";
  inputs."gmp-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gmp-v0_2_5".dir   = "v0_2_5";
  inputs."gmp-v0_2_5".owner = "nim-nix-pkgs";
  inputs."gmp-v0_2_5".ref   = "master";
  inputs."gmp-v0_2_5".repo  = "gmp";
  inputs."gmp-v0_2_5".type  = "github";
  inputs."gmp-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gmp-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
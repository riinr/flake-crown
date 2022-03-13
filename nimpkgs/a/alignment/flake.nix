{
  description = ''alignment is a library to align strings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."alignment-master".dir   = "master";
  inputs."alignment-master".owner = "nim-nix-pkgs";
  inputs."alignment-master".ref   = "master";
  inputs."alignment-master".repo  = "alignment";
  inputs."alignment-master".type  = "github";
  inputs."alignment-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-1_0_0".dir   = "1_0_0";
  inputs."alignment-1_0_0".owner = "nim-nix-pkgs";
  inputs."alignment-1_0_0".ref   = "master";
  inputs."alignment-1_0_0".repo  = "alignment";
  inputs."alignment-1_0_0".type  = "github";
  inputs."alignment-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-1_1_0".dir   = "1_1_0";
  inputs."alignment-1_1_0".owner = "nim-nix-pkgs";
  inputs."alignment-1_1_0".ref   = "master";
  inputs."alignment-1_1_0".repo  = "alignment";
  inputs."alignment-1_1_0".type  = "github";
  inputs."alignment-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-v1_1_1".dir   = "v1_1_1";
  inputs."alignment-v1_1_1".owner = "nim-nix-pkgs";
  inputs."alignment-v1_1_1".ref   = "master";
  inputs."alignment-v1_1_1".repo  = "alignment";
  inputs."alignment-v1_1_1".type  = "github";
  inputs."alignment-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-v1_1_2".dir   = "v1_1_2";
  inputs."alignment-v1_1_2".owner = "nim-nix-pkgs";
  inputs."alignment-v1_1_2".ref   = "master";
  inputs."alignment-v1_1_2".repo  = "alignment";
  inputs."alignment-v1_1_2".type  = "github";
  inputs."alignment-v1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-v1_2_0".dir   = "v1_2_0";
  inputs."alignment-v1_2_0".owner = "nim-nix-pkgs";
  inputs."alignment-v1_2_0".ref   = "master";
  inputs."alignment-v1_2_0".repo  = "alignment";
  inputs."alignment-v1_2_0".type  = "github";
  inputs."alignment-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-v1_2_1".dir   = "v1_2_1";
  inputs."alignment-v1_2_1".owner = "nim-nix-pkgs";
  inputs."alignment-v1_2_1".ref   = "master";
  inputs."alignment-v1_2_1".repo  = "alignment";
  inputs."alignment-v1_2_1".type  = "github";
  inputs."alignment-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."alignment-v1_3_0".dir   = "v1_3_0";
  inputs."alignment-v1_3_0".owner = "nim-nix-pkgs";
  inputs."alignment-v1_3_0".ref   = "master";
  inputs."alignment-v1_3_0".repo  = "alignment";
  inputs."alignment-v1_3_0".type  = "github";
  inputs."alignment-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."alignment-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
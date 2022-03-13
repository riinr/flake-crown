{
  description = ''Manage CSV files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."csvtools-master".dir   = "master";
  inputs."csvtools-master".owner = "nim-nix-pkgs";
  inputs."csvtools-master".ref   = "master";
  inputs."csvtools-master".repo  = "csvtools";
  inputs."csvtools-master".type  = "github";
  inputs."csvtools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtools-0_1_0".dir   = "0_1_0";
  inputs."csvtools-0_1_0".owner = "nim-nix-pkgs";
  inputs."csvtools-0_1_0".ref   = "master";
  inputs."csvtools-0_1_0".repo  = "csvtools";
  inputs."csvtools-0_1_0".type  = "github";
  inputs."csvtools-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtools-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtools-0_1_1".dir   = "0_1_1";
  inputs."csvtools-0_1_1".owner = "nim-nix-pkgs";
  inputs."csvtools-0_1_1".ref   = "master";
  inputs."csvtools-0_1_1".repo  = "csvtools";
  inputs."csvtools-0_1_1".type  = "github";
  inputs."csvtools-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtools-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtools-0_1_2".dir   = "0_1_2";
  inputs."csvtools-0_1_2".owner = "nim-nix-pkgs";
  inputs."csvtools-0_1_2".ref   = "master";
  inputs."csvtools-0_1_2".repo  = "csvtools";
  inputs."csvtools-0_1_2".type  = "github";
  inputs."csvtools-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtools-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtools-0_1_3".dir   = "0_1_3";
  inputs."csvtools-0_1_3".owner = "nim-nix-pkgs";
  inputs."csvtools-0_1_3".ref   = "master";
  inputs."csvtools-0_1_3".repo  = "csvtools";
  inputs."csvtools-0_1_3".type  = "github";
  inputs."csvtools-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtools-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtools-0_1_4".dir   = "0_1_4";
  inputs."csvtools-0_1_4".owner = "nim-nix-pkgs";
  inputs."csvtools-0_1_4".ref   = "master";
  inputs."csvtools-0_1_4".repo  = "csvtools";
  inputs."csvtools-0_1_4".type  = "github";
  inputs."csvtools-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtools-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtools-0_2_0".dir   = "0_2_0";
  inputs."csvtools-0_2_0".owner = "nim-nix-pkgs";
  inputs."csvtools-0_2_0".ref   = "master";
  inputs."csvtools-0_2_0".repo  = "csvtools";
  inputs."csvtools-0_2_0".type  = "github";
  inputs."csvtools-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtools-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvtools-0_2_1".dir   = "0_2_1";
  inputs."csvtools-0_2_1".owner = "nim-nix-pkgs";
  inputs."csvtools-0_2_1".ref   = "master";
  inputs."csvtools-0_2_1".repo  = "csvtools";
  inputs."csvtools-0_2_1".type  = "github";
  inputs."csvtools-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvtools-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
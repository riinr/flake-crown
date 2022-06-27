{
  description = ''A stylish little logger to replace echo in command-line apps'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cutelog-master".dir   = "master";
  inputs."cutelog-master".owner = "nim-nix-pkgs";
  inputs."cutelog-master".ref   = "master";
  inputs."cutelog-master".repo  = "cutelog";
  inputs."cutelog-master".type  = "github";
  inputs."cutelog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cutelog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cutelog-1_0_1".dir   = "1_0_1";
  inputs."cutelog-1_0_1".owner = "nim-nix-pkgs";
  inputs."cutelog-1_0_1".ref   = "master";
  inputs."cutelog-1_0_1".repo  = "cutelog";
  inputs."cutelog-1_0_1".type  = "github";
  inputs."cutelog-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cutelog-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cutelog-1_0_2".dir   = "1_0_2";
  inputs."cutelog-1_0_2".owner = "nim-nix-pkgs";
  inputs."cutelog-1_0_2".ref   = "master";
  inputs."cutelog-1_0_2".repo  = "cutelog";
  inputs."cutelog-1_0_2".type  = "github";
  inputs."cutelog-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cutelog-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cutelog-1_1_0".dir   = "1_1_0";
  inputs."cutelog-1_1_0".owner = "nim-nix-pkgs";
  inputs."cutelog-1_1_0".ref   = "master";
  inputs."cutelog-1_1_0".repo  = "cutelog";
  inputs."cutelog-1_1_0".type  = "github";
  inputs."cutelog-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cutelog-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cutelog-1_1_1".dir   = "1_1_1";
  inputs."cutelog-1_1_1".owner = "nim-nix-pkgs";
  inputs."cutelog-1_1_1".ref   = "master";
  inputs."cutelog-1_1_1".repo  = "cutelog";
  inputs."cutelog-1_1_1".type  = "github";
  inputs."cutelog-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cutelog-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cutelog-1_1_2".dir   = "1_1_2";
  inputs."cutelog-1_1_2".owner = "nim-nix-pkgs";
  inputs."cutelog-1_1_2".ref   = "master";
  inputs."cutelog-1_1_2".repo  = "cutelog";
  inputs."cutelog-1_1_2".type  = "github";
  inputs."cutelog-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cutelog-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cutelog-2_0_0".dir   = "2_0_0";
  inputs."cutelog-2_0_0".owner = "nim-nix-pkgs";
  inputs."cutelog-2_0_0".ref   = "master";
  inputs."cutelog-2_0_0".repo  = "cutelog";
  inputs."cutelog-2_0_0".type  = "github";
  inputs."cutelog-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cutelog-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
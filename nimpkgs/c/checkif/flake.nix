{
  description = ''A CLI tool to check files (and registry in Windows)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."checkif-master".dir   = "master";
  inputs."checkif-master".owner = "nim-nix-pkgs";
  inputs."checkif-master".ref   = "master";
  inputs."checkif-master".repo  = "checkif";
  inputs."checkif-master".type  = "github";
  inputs."checkif-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkif-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkif-1_0_0".dir   = "1_0_0";
  inputs."checkif-1_0_0".owner = "nim-nix-pkgs";
  inputs."checkif-1_0_0".ref   = "master";
  inputs."checkif-1_0_0".repo  = "checkif";
  inputs."checkif-1_0_0".type  = "github";
  inputs."checkif-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkif-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkif-1_1_0".dir   = "1_1_0";
  inputs."checkif-1_1_0".owner = "nim-nix-pkgs";
  inputs."checkif-1_1_0".ref   = "master";
  inputs."checkif-1_1_0".repo  = "checkif";
  inputs."checkif-1_1_0".type  = "github";
  inputs."checkif-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkif-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."checkif-1_2_0".dir   = "1_2_0";
  inputs."checkif-1_2_0".owner = "nim-nix-pkgs";
  inputs."checkif-1_2_0".ref   = "master";
  inputs."checkif-1_2_0".repo  = "checkif";
  inputs."checkif-1_2_0".type  = "github";
  inputs."checkif-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."checkif-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
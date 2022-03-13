{
  description = ''A high level SQLite API for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sqliteral-master".dir   = "master";
  inputs."sqliteral-master".owner = "nim-nix-pkgs";
  inputs."sqliteral-master".ref   = "master";
  inputs."sqliteral-master".repo  = "sqliteral";
  inputs."sqliteral-master".type  = "github";
  inputs."sqliteral-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-1_0_0".dir   = "1_0_0";
  inputs."sqliteral-1_0_0".owner = "nim-nix-pkgs";
  inputs."sqliteral-1_0_0".ref   = "master";
  inputs."sqliteral-1_0_0".repo  = "sqliteral";
  inputs."sqliteral-1_0_0".type  = "github";
  inputs."sqliteral-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-1_1_0".dir   = "1_1_0";
  inputs."sqliteral-1_1_0".owner = "nim-nix-pkgs";
  inputs."sqliteral-1_1_0".ref   = "master";
  inputs."sqliteral-1_1_0".repo  = "sqliteral";
  inputs."sqliteral-1_1_0".type  = "github";
  inputs."sqliteral-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-1_2_0".dir   = "1_2_0";
  inputs."sqliteral-1_2_0".owner = "nim-nix-pkgs";
  inputs."sqliteral-1_2_0".ref   = "master";
  inputs."sqliteral-1_2_0".repo  = "sqliteral";
  inputs."sqliteral-1_2_0".type  = "github";
  inputs."sqliteral-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-1_3_0".dir   = "1_3_0";
  inputs."sqliteral-1_3_0".owner = "nim-nix-pkgs";
  inputs."sqliteral-1_3_0".ref   = "master";
  inputs."sqliteral-1_3_0".repo  = "sqliteral";
  inputs."sqliteral-1_3_0".type  = "github";
  inputs."sqliteral-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-2_0_0".dir   = "2_0_0";
  inputs."sqliteral-2_0_0".owner = "nim-nix-pkgs";
  inputs."sqliteral-2_0_0".ref   = "master";
  inputs."sqliteral-2_0_0".repo  = "sqliteral";
  inputs."sqliteral-2_0_0".type  = "github";
  inputs."sqliteral-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-2_0_1".dir   = "2_0_1";
  inputs."sqliteral-2_0_1".owner = "nim-nix-pkgs";
  inputs."sqliteral-2_0_1".ref   = "master";
  inputs."sqliteral-2_0_1".repo  = "sqliteral";
  inputs."sqliteral-2_0_1".type  = "github";
  inputs."sqliteral-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-2_0_2".dir   = "2_0_2";
  inputs."sqliteral-2_0_2".owner = "nim-nix-pkgs";
  inputs."sqliteral-2_0_2".ref   = "master";
  inputs."sqliteral-2_0_2".repo  = "sqliteral";
  inputs."sqliteral-2_0_2".type  = "github";
  inputs."sqliteral-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sqliteral-3_0_0".dir   = "3_0_0";
  inputs."sqliteral-3_0_0".owner = "nim-nix-pkgs";
  inputs."sqliteral-3_0_0".ref   = "master";
  inputs."sqliteral-3_0_0".repo  = "sqliteral";
  inputs."sqliteral-3_0_0".type  = "github";
  inputs."sqliteral-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sqliteral-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
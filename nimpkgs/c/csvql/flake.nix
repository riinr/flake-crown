{
  description = ''csvql.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."csvql-master".dir   = "master";
  inputs."csvql-master".owner = "nim-nix-pkgs";
  inputs."csvql-master".ref   = "master";
  inputs."csvql-master".repo  = "csvql";
  inputs."csvql-master".type  = "github";
  inputs."csvql-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvql-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvql-1_0".dir   = "1_0";
  inputs."csvql-1_0".owner = "nim-nix-pkgs";
  inputs."csvql-1_0".ref   = "master";
  inputs."csvql-1_0".repo  = "csvql";
  inputs."csvql-1_0".type  = "github";
  inputs."csvql-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvql-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvql-2_0_1".dir   = "2_0_1";
  inputs."csvql-2_0_1".owner = "nim-nix-pkgs";
  inputs."csvql-2_0_1".ref   = "master";
  inputs."csvql-2_0_1".repo  = "csvql";
  inputs."csvql-2_0_1".type  = "github";
  inputs."csvql-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvql-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvql-2_0v".dir   = "2_0v";
  inputs."csvql-2_0v".owner = "nim-nix-pkgs";
  inputs."csvql-2_0v".ref   = "master";
  inputs."csvql-2_0v".repo  = "csvql";
  inputs."csvql-2_0v".type  = "github";
  inputs."csvql-2_0v".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvql-2_0v".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."csvql-3_0".dir   = "3_0";
  inputs."csvql-3_0".owner = "nim-nix-pkgs";
  inputs."csvql-3_0".ref   = "master";
  inputs."csvql-3_0".repo  = "csvql";
  inputs."csvql-3_0".type  = "github";
  inputs."csvql-3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."csvql-3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
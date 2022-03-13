{
  description = ''A command handler for the dimscord discord library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dimscmd-master".dir   = "master";
  inputs."dimscmd-master".owner = "nim-nix-pkgs";
  inputs."dimscmd-master".ref   = "master";
  inputs."dimscmd-master".repo  = "dimscmd";
  inputs."dimscmd-master".type  = "github";
  inputs."dimscmd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-0_2_0".dir   = "0_2_0";
  inputs."dimscmd-0_2_0".owner = "nim-nix-pkgs";
  inputs."dimscmd-0_2_0".ref   = "master";
  inputs."dimscmd-0_2_0".repo  = "dimscmd";
  inputs."dimscmd-0_2_0".type  = "github";
  inputs."dimscmd-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-0_2_1".dir   = "0_2_1";
  inputs."dimscmd-0_2_1".owner = "nim-nix-pkgs";
  inputs."dimscmd-0_2_1".ref   = "master";
  inputs."dimscmd-0_2_1".repo  = "dimscmd";
  inputs."dimscmd-0_2_1".type  = "github";
  inputs."dimscmd-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_0_0".dir   = "1_0_0";
  inputs."dimscmd-1_0_0".owner = "nim-nix-pkgs";
  inputs."dimscmd-1_0_0".ref   = "master";
  inputs."dimscmd-1_0_0".repo  = "dimscmd";
  inputs."dimscmd-1_0_0".type  = "github";
  inputs."dimscmd-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_1_0".dir   = "1_1_0";
  inputs."dimscmd-1_1_0".owner = "nim-nix-pkgs";
  inputs."dimscmd-1_1_0".ref   = "master";
  inputs."dimscmd-1_1_0".repo  = "dimscmd";
  inputs."dimscmd-1_1_0".type  = "github";
  inputs."dimscmd-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_1_1".dir   = "1_1_1";
  inputs."dimscmd-1_1_1".owner = "nim-nix-pkgs";
  inputs."dimscmd-1_1_1".ref   = "master";
  inputs."dimscmd-1_1_1".repo  = "dimscmd";
  inputs."dimscmd-1_1_1".type  = "github";
  inputs."dimscmd-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_1_2".dir   = "1_1_2";
  inputs."dimscmd-1_1_2".owner = "nim-nix-pkgs";
  inputs."dimscmd-1_1_2".ref   = "master";
  inputs."dimscmd-1_1_2".repo  = "dimscmd";
  inputs."dimscmd-1_1_2".type  = "github";
  inputs."dimscmd-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_2_0".dir   = "1_2_0";
  inputs."dimscmd-1_2_0".owner = "nim-nix-pkgs";
  inputs."dimscmd-1_2_0".ref   = "master";
  inputs."dimscmd-1_2_0".repo  = "dimscmd";
  inputs."dimscmd-1_2_0".type  = "github";
  inputs."dimscmd-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_2_1".dir   = "1_2_1";
  inputs."dimscmd-1_2_1".owner = "nim-nix-pkgs";
  inputs."dimscmd-1_2_1".ref   = "master";
  inputs."dimscmd-1_2_1".repo  = "dimscmd";
  inputs."dimscmd-1_2_1".type  = "github";
  inputs."dimscmd-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_2_2".dir   = "1_2_2";
  inputs."dimscmd-1_2_2".owner = "nim-nix-pkgs";
  inputs."dimscmd-1_2_2".ref   = "master";
  inputs."dimscmd-1_2_2".repo  = "dimscmd";
  inputs."dimscmd-1_2_2".type  = "github";
  inputs."dimscmd-1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_3_0".dir   = "1_3_0";
  inputs."dimscmd-1_3_0".owner = "nim-nix-pkgs";
  inputs."dimscmd-1_3_0".ref   = "master";
  inputs."dimscmd-1_3_0".repo  = "dimscmd";
  inputs."dimscmd-1_3_0".type  = "github";
  inputs."dimscmd-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_3_1".dir   = "1_3_1";
  inputs."dimscmd-1_3_1".owner = "nim-nix-pkgs";
  inputs."dimscmd-1_3_1".ref   = "master";
  inputs."dimscmd-1_3_1".repo  = "dimscmd";
  inputs."dimscmd-1_3_1".type  = "github";
  inputs."dimscmd-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
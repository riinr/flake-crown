{
  description = ''Boilerplate generator for Jester web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gen-master".dir   = "master";
  inputs."gen-master".owner = "nim-nix-pkgs";
  inputs."gen-master".ref   = "master";
  inputs."gen-master".repo  = "gen";
  inputs."gen-master".type  = "github";
  inputs."gen-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-0_2_0".dir   = "0_2_0";
  inputs."gen-0_2_0".owner = "nim-nix-pkgs";
  inputs."gen-0_2_0".ref   = "master";
  inputs."gen-0_2_0".repo  = "gen";
  inputs."gen-0_2_0".type  = "github";
  inputs."gen-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-0_4_0".dir   = "0_4_0";
  inputs."gen-0_4_0".owner = "nim-nix-pkgs";
  inputs."gen-0_4_0".ref   = "master";
  inputs."gen-0_4_0".repo  = "gen";
  inputs."gen-0_4_0".type  = "github";
  inputs."gen-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-0_6_0".dir   = "0_6_0";
  inputs."gen-0_6_0".owner = "nim-nix-pkgs";
  inputs."gen-0_6_0".ref   = "master";
  inputs."gen-0_6_0".repo  = "gen";
  inputs."gen-0_6_0".type  = "github";
  inputs."gen-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-0_8_0".dir   = "0_8_0";
  inputs."gen-0_8_0".owner = "nim-nix-pkgs";
  inputs."gen-0_8_0".ref   = "master";
  inputs."gen-0_8_0".repo  = "gen";
  inputs."gen-0_8_0".type  = "github";
  inputs."gen-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-1_0_0".dir   = "1_0_0";
  inputs."gen-1_0_0".owner = "nim-nix-pkgs";
  inputs."gen-1_0_0".ref   = "master";
  inputs."gen-1_0_0".repo  = "gen";
  inputs."gen-1_0_0".type  = "github";
  inputs."gen-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-1_2_0".dir   = "1_2_0";
  inputs."gen-1_2_0".owner = "nim-nix-pkgs";
  inputs."gen-1_2_0".ref   = "master";
  inputs."gen-1_2_0".repo  = "gen";
  inputs."gen-1_2_0".type  = "github";
  inputs."gen-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gen-1_4_0".dir   = "1_4_0";
  inputs."gen-1_4_0".owner = "nim-nix-pkgs";
  inputs."gen-1_4_0".ref   = "master";
  inputs."gen-1_4_0".repo  = "gen";
  inputs."gen-1_4_0".type  = "github";
  inputs."gen-1_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gen-1_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
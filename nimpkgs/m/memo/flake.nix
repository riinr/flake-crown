{
  description = ''Memoize Nim functions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."memo-master".dir   = "master";
  inputs."memo-master".owner = "nim-nix-pkgs";
  inputs."memo-master".ref   = "master";
  inputs."memo-master".repo  = "memo";
  inputs."memo-master".type  = "github";
  inputs."memo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_1_0".dir   = "0_1_0";
  inputs."memo-0_1_0".owner = "nim-nix-pkgs";
  inputs."memo-0_1_0".ref   = "master";
  inputs."memo-0_1_0".repo  = "memo";
  inputs."memo-0_1_0".type  = "github";
  inputs."memo-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_1_1".dir   = "0_1_1";
  inputs."memo-0_1_1".owner = "nim-nix-pkgs";
  inputs."memo-0_1_1".ref   = "master";
  inputs."memo-0_1_1".repo  = "memo";
  inputs."memo-0_1_1".type  = "github";
  inputs."memo-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_1_2".dir   = "0_1_2";
  inputs."memo-0_1_2".owner = "nim-nix-pkgs";
  inputs."memo-0_1_2".ref   = "master";
  inputs."memo-0_1_2".repo  = "memo";
  inputs."memo-0_1_2".type  = "github";
  inputs."memo-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_1_3".dir   = "0_1_3";
  inputs."memo-0_1_3".owner = "nim-nix-pkgs";
  inputs."memo-0_1_3".ref   = "master";
  inputs."memo-0_1_3".repo  = "memo";
  inputs."memo-0_1_3".type  = "github";
  inputs."memo-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_2_0".dir   = "0_2_0";
  inputs."memo-0_2_0".owner = "nim-nix-pkgs";
  inputs."memo-0_2_0".ref   = "master";
  inputs."memo-0_2_0".repo  = "memo";
  inputs."memo-0_2_0".type  = "github";
  inputs."memo-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_2_1".dir   = "0_2_1";
  inputs."memo-0_2_1".owner = "nim-nix-pkgs";
  inputs."memo-0_2_1".ref   = "master";
  inputs."memo-0_2_1".repo  = "memo";
  inputs."memo-0_2_1".type  = "github";
  inputs."memo-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_2_2".dir   = "0_2_2";
  inputs."memo-0_2_2".owner = "nim-nix-pkgs";
  inputs."memo-0_2_2".ref   = "master";
  inputs."memo-0_2_2".repo  = "memo";
  inputs."memo-0_2_2".type  = "github";
  inputs."memo-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_3_0".dir   = "0_3_0";
  inputs."memo-0_3_0".owner = "nim-nix-pkgs";
  inputs."memo-0_3_0".ref   = "master";
  inputs."memo-0_3_0".repo  = "memo";
  inputs."memo-0_3_0".type  = "github";
  inputs."memo-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."memo-0_4_0".dir   = "0_4_0";
  inputs."memo-0_4_0".owner = "nim-nix-pkgs";
  inputs."memo-0_4_0".ref   = "master";
  inputs."memo-0_4_0".repo  = "memo";
  inputs."memo-0_4_0".type  = "github";
  inputs."memo-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."memo-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
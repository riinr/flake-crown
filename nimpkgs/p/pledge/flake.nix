{
  description = ''OpenBSDs pledge(2) for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pledge-master".dir   = "master";
  inputs."pledge-master".owner = "nim-nix-pkgs";
  inputs."pledge-master".ref   = "master";
  inputs."pledge-master".repo  = "pledge";
  inputs."pledge-master".type  = "github";
  inputs."pledge-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v1_0_0".dir   = "v1_0_0";
  inputs."pledge-v1_0_0".owner = "nim-nix-pkgs";
  inputs."pledge-v1_0_0".ref   = "master";
  inputs."pledge-v1_0_0".repo  = "pledge";
  inputs."pledge-v1_0_0".type  = "github";
  inputs."pledge-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v1_0_1".dir   = "v1_0_1";
  inputs."pledge-v1_0_1".owner = "nim-nix-pkgs";
  inputs."pledge-v1_0_1".ref   = "master";
  inputs."pledge-v1_0_1".repo  = "pledge";
  inputs."pledge-v1_0_1".type  = "github";
  inputs."pledge-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v1_0_2".dir   = "v1_0_2";
  inputs."pledge-v1_0_2".owner = "nim-nix-pkgs";
  inputs."pledge-v1_0_2".ref   = "master";
  inputs."pledge-v1_0_2".repo  = "pledge";
  inputs."pledge-v1_0_2".type  = "github";
  inputs."pledge-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v1_1_0".dir   = "v1_1_0";
  inputs."pledge-v1_1_0".owner = "nim-nix-pkgs";
  inputs."pledge-v1_1_0".ref   = "master";
  inputs."pledge-v1_1_0".repo  = "pledge";
  inputs."pledge-v1_1_0".type  = "github";
  inputs."pledge-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v1_1_1".dir   = "v1_1_1";
  inputs."pledge-v1_1_1".owner = "nim-nix-pkgs";
  inputs."pledge-v1_1_1".ref   = "master";
  inputs."pledge-v1_1_1".repo  = "pledge";
  inputs."pledge-v1_1_1".type  = "github";
  inputs."pledge-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v2_0_0".dir   = "v2_0_0";
  inputs."pledge-v2_0_0".owner = "nim-nix-pkgs";
  inputs."pledge-v2_0_0".ref   = "master";
  inputs."pledge-v2_0_0".repo  = "pledge";
  inputs."pledge-v2_0_0".type  = "github";
  inputs."pledge-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pledge-v2_0_1".dir   = "v2_0_1";
  inputs."pledge-v2_0_1".owner = "nim-nix-pkgs";
  inputs."pledge-v2_0_1".ref   = "master";
  inputs."pledge-v2_0_1".repo  = "pledge";
  inputs."pledge-v2_0_1".type  = "github";
  inputs."pledge-v2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pledge-v2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
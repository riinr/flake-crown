{
  description = ''Shaders in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsl-master".dir   = "master";
  inputs."nimsl-master".owner = "nim-nix-pkgs";
  inputs."nimsl-master".ref   = "master";
  inputs."nimsl-master".repo  = "nimsl";
  inputs."nimsl-master".type  = "github";
  inputs."nimsl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_2".dir   = "v0_2";
  inputs."nimsl-v0_2".owner = "nim-nix-pkgs";
  inputs."nimsl-v0_2".ref   = "master";
  inputs."nimsl-v0_2".repo  = "nimsl";
  inputs."nimsl-v0_2".type  = "github";
  inputs."nimsl-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_2_1".dir   = "v0_2_1";
  inputs."nimsl-v0_2_1".owner = "nim-nix-pkgs";
  inputs."nimsl-v0_2_1".ref   = "master";
  inputs."nimsl-v0_2_1".repo  = "nimsl";
  inputs."nimsl-v0_2_1".type  = "github";
  inputs."nimsl-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_3".dir   = "v0_3";
  inputs."nimsl-v0_3".owner = "nim-nix-pkgs";
  inputs."nimsl-v0_3".ref   = "master";
  inputs."nimsl-v0_3".repo  = "nimsl";
  inputs."nimsl-v0_3".type  = "github";
  inputs."nimsl-v0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_3_1".dir   = "v0_3_1";
  inputs."nimsl-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimsl-v0_3_1".ref   = "master";
  inputs."nimsl-v0_3_1".repo  = "nimsl";
  inputs."nimsl-v0_3_1".type  = "github";
  inputs."nimsl-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_3_2".dir   = "v0_3_2";
  inputs."nimsl-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimsl-v0_3_2".ref   = "master";
  inputs."nimsl-v0_3_2".repo  = "nimsl";
  inputs."nimsl-v0_3_2".type  = "github";
  inputs."nimsl-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsl-v0_3_3".dir   = "v0_3_3";
  inputs."nimsl-v0_3_3".owner = "nim-nix-pkgs";
  inputs."nimsl-v0_3_3".ref   = "master";
  inputs."nimsl-v0_3_3".repo  = "nimsl";
  inputs."nimsl-v0_3_3".type  = "github";
  inputs."nimsl-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsl-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
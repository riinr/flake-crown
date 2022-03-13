{
  description = ''A library for factorization machines in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfm-master".dir   = "master";
  inputs."nimfm-master".owner = "nim-nix-pkgs";
  inputs."nimfm-master".ref   = "master";
  inputs."nimfm-master".repo  = "nimfm";
  inputs."nimfm-master".type  = "github";
  inputs."nimfm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfm-v0_1_0".dir   = "v0_1_0";
  inputs."nimfm-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimfm-v0_1_0".ref   = "master";
  inputs."nimfm-v0_1_0".repo  = "nimfm";
  inputs."nimfm-v0_1_0".type  = "github";
  inputs."nimfm-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfm-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfm-v0_2_0".dir   = "v0_2_0";
  inputs."nimfm-v0_2_0".owner = "nim-nix-pkgs";
  inputs."nimfm-v0_2_0".ref   = "master";
  inputs."nimfm-v0_2_0".repo  = "nimfm";
  inputs."nimfm-v0_2_0".type  = "github";
  inputs."nimfm-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfm-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfm-v0_3_0".dir   = "v0_3_0";
  inputs."nimfm-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimfm-v0_3_0".ref   = "master";
  inputs."nimfm-v0_3_0".repo  = "nimfm";
  inputs."nimfm-v0_3_0".type  = "github";
  inputs."nimfm-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfm-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
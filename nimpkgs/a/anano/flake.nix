{
  description = ''Another nanoID implementation for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."anano-master".dir   = "master";
  inputs."anano-master".owner = "nim-nix-pkgs";
  inputs."anano-master".ref   = "master";
  inputs."anano-master".repo  = "anano";
  inputs."anano-master".type  = "github";
  inputs."anano-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anano-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anano-0_1_0".dir   = "0_1_0";
  inputs."anano-0_1_0".owner = "nim-nix-pkgs";
  inputs."anano-0_1_0".ref   = "master";
  inputs."anano-0_1_0".repo  = "anano";
  inputs."anano-0_1_0".type  = "github";
  inputs."anano-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anano-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anano-0_2_0".dir   = "0_2_0";
  inputs."anano-0_2_0".owner = "nim-nix-pkgs";
  inputs."anano-0_2_0".ref   = "master";
  inputs."anano-0_2_0".repo  = "anano";
  inputs."anano-0_2_0".type  = "github";
  inputs."anano-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anano-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."anano-0_2_1".dir   = "0_2_1";
  inputs."anano-0_2_1".owner = "nim-nix-pkgs";
  inputs."anano-0_2_1".ref   = "master";
  inputs."anano-0_2_1".repo  = "anano";
  inputs."anano-0_2_1".type  = "github";
  inputs."anano-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."anano-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Porting some Python / Kotlin features to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pykot-master".dir   = "master";
  inputs."pykot-master".owner = "nim-nix-pkgs";
  inputs."pykot-master".ref   = "master";
  inputs."pykot-master".repo  = "pykot";
  inputs."pykot-master".type  = "github";
  inputs."pykot-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_1_0".dir   = "v0_1_0";
  inputs."pykot-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pykot-v0_1_0".ref   = "master";
  inputs."pykot-v0_1_0".repo  = "pykot";
  inputs."pykot-v0_1_0".type  = "github";
  inputs."pykot-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_1_1".dir   = "v0_1_1";
  inputs."pykot-v0_1_1".owner = "nim-nix-pkgs";
  inputs."pykot-v0_1_1".ref   = "master";
  inputs."pykot-v0_1_1".repo  = "pykot";
  inputs."pykot-v0_1_1".type  = "github";
  inputs."pykot-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_1_2".dir   = "v0_1_2";
  inputs."pykot-v0_1_2".owner = "nim-nix-pkgs";
  inputs."pykot-v0_1_2".ref   = "master";
  inputs."pykot-v0_1_2".repo  = "pykot";
  inputs."pykot-v0_1_2".type  = "github";
  inputs."pykot-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_1_3".dir   = "v0_1_3";
  inputs."pykot-v0_1_3".owner = "nim-nix-pkgs";
  inputs."pykot-v0_1_3".ref   = "master";
  inputs."pykot-v0_1_3".repo  = "pykot";
  inputs."pykot-v0_1_3".type  = "github";
  inputs."pykot-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_2_0".dir   = "v0_2_0";
  inputs."pykot-v0_2_0".owner = "nim-nix-pkgs";
  inputs."pykot-v0_2_0".ref   = "master";
  inputs."pykot-v0_2_0".repo  = "pykot";
  inputs."pykot-v0_2_0".type  = "github";
  inputs."pykot-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pykot-v0_2_1".dir   = "v0_2_1";
  inputs."pykot-v0_2_1".owner = "nim-nix-pkgs";
  inputs."pykot-v0_2_1".ref   = "master";
  inputs."pykot-v0_2_1".repo  = "pykot";
  inputs."pykot-v0_2_1".type  = "github";
  inputs."pykot-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pykot-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
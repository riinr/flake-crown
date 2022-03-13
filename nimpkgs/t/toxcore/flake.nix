{
  description = ''C Tox core wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."toxcore-master".dir   = "master";
  inputs."toxcore-master".owner = "nim-nix-pkgs";
  inputs."toxcore-master".ref   = "master";
  inputs."toxcore-master".repo  = "toxcore";
  inputs."toxcore-master".type  = "github";
  inputs."toxcore-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-0_4_1".dir   = "0_4_1";
  inputs."toxcore-0_4_1".owner = "nim-nix-pkgs";
  inputs."toxcore-0_4_1".ref   = "master";
  inputs."toxcore-0_4_1".repo  = "toxcore";
  inputs."toxcore-0_4_1".type  = "github";
  inputs."toxcore-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_1_0".dir   = "v0_1_0";
  inputs."toxcore-v0_1_0".owner = "nim-nix-pkgs";
  inputs."toxcore-v0_1_0".ref   = "master";
  inputs."toxcore-v0_1_0".repo  = "toxcore";
  inputs."toxcore-v0_1_0".type  = "github";
  inputs."toxcore-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_1_1".dir   = "v0_1_1";
  inputs."toxcore-v0_1_1".owner = "nim-nix-pkgs";
  inputs."toxcore-v0_1_1".ref   = "master";
  inputs."toxcore-v0_1_1".repo  = "toxcore";
  inputs."toxcore-v0_1_1".type  = "github";
  inputs."toxcore-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_2_0".dir   = "v0_2_0";
  inputs."toxcore-v0_2_0".owner = "nim-nix-pkgs";
  inputs."toxcore-v0_2_0".ref   = "master";
  inputs."toxcore-v0_2_0".repo  = "toxcore";
  inputs."toxcore-v0_2_0".type  = "github";
  inputs."toxcore-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_2_1".dir   = "v0_2_1";
  inputs."toxcore-v0_2_1".owner = "nim-nix-pkgs";
  inputs."toxcore-v0_2_1".ref   = "master";
  inputs."toxcore-v0_2_1".repo  = "toxcore";
  inputs."toxcore-v0_2_1".type  = "github";
  inputs."toxcore-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_3_0".dir   = "v0_3_0";
  inputs."toxcore-v0_3_0".owner = "nim-nix-pkgs";
  inputs."toxcore-v0_3_0".ref   = "master";
  inputs."toxcore-v0_3_0".repo  = "toxcore";
  inputs."toxcore-v0_3_0".type  = "github";
  inputs."toxcore-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_3_1".dir   = "v0_3_1";
  inputs."toxcore-v0_3_1".owner = "nim-nix-pkgs";
  inputs."toxcore-v0_3_1".ref   = "master";
  inputs."toxcore-v0_3_1".repo  = "toxcore";
  inputs."toxcore-v0_3_1".type  = "github";
  inputs."toxcore-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."toxcore-v0_4_0".dir   = "v0_4_0";
  inputs."toxcore-v0_4_0".owner = "nim-nix-pkgs";
  inputs."toxcore-v0_4_0".ref   = "master";
  inputs."toxcore-v0_4_0".repo  = "toxcore";
  inputs."toxcore-v0_4_0".type  = "github";
  inputs."toxcore-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toxcore-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
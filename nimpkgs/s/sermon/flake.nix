{
  description = ''Monitor the state and memory of processes and URL response.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sermon-master".dir   = "master";
  inputs."sermon-master".owner = "nim-nix-pkgs";
  inputs."sermon-master".ref   = "master";
  inputs."sermon-master".repo  = "sermon";
  inputs."sermon-master".type  = "github";
  inputs."sermon-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_1_1".dir   = "v0_1_1";
  inputs."sermon-v0_1_1".owner = "nim-nix-pkgs";
  inputs."sermon-v0_1_1".ref   = "master";
  inputs."sermon-v0_1_1".repo  = "sermon";
  inputs."sermon-v0_1_1".type  = "github";
  inputs."sermon-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_2_6".dir   = "v0_2_6";
  inputs."sermon-v0_2_6".owner = "nim-nix-pkgs";
  inputs."sermon-v0_2_6".ref   = "master";
  inputs."sermon-v0_2_6".repo  = "sermon";
  inputs."sermon-v0_2_6".type  = "github";
  inputs."sermon-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_2_7".dir   = "v0_2_7";
  inputs."sermon-v0_2_7".owner = "nim-nix-pkgs";
  inputs."sermon-v0_2_7".ref   = "master";
  inputs."sermon-v0_2_7".repo  = "sermon";
  inputs."sermon-v0_2_7".type  = "github";
  inputs."sermon-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_2_8".dir   = "v0_2_8";
  inputs."sermon-v0_2_8".owner = "nim-nix-pkgs";
  inputs."sermon-v0_2_8".ref   = "master";
  inputs."sermon-v0_2_8".repo  = "sermon";
  inputs."sermon-v0_2_8".type  = "github";
  inputs."sermon-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_3_0".dir   = "v0_3_0";
  inputs."sermon-v0_3_0".owner = "nim-nix-pkgs";
  inputs."sermon-v0_3_0".ref   = "master";
  inputs."sermon-v0_3_0".repo  = "sermon";
  inputs."sermon-v0_3_0".type  = "github";
  inputs."sermon-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sermon-v0_3_1".dir   = "v0_3_1";
  inputs."sermon-v0_3_1".owner = "nim-nix-pkgs";
  inputs."sermon-v0_3_1".ref   = "master";
  inputs."sermon-v0_3_1".repo  = "sermon";
  inputs."sermon-v0_3_1".type  = "github";
  inputs."sermon-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sermon-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Another micro web framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."prologue-devel".dir   = "devel";
  inputs."prologue-devel".owner = "nim-nix-pkgs";
  inputs."prologue-devel".ref   = "master";
  inputs."prologue-devel".repo  = "prologue";
  inputs."prologue-devel".type  = "github";
  inputs."prologue-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-0_4_4".dir   = "0_4_4";
  inputs."prologue-0_4_4".owner = "nim-nix-pkgs";
  inputs."prologue-0_4_4".ref   = "master";
  inputs."prologue-0_4_4".repo  = "prologue";
  inputs."prologue-0_4_4".type  = "github";
  inputs."prologue-0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-0_4_6".dir   = "0_4_6";
  inputs."prologue-0_4_6".owner = "nim-nix-pkgs";
  inputs."prologue-0_4_6".ref   = "master";
  inputs."prologue-0_4_6".repo  = "prologue";
  inputs."prologue-0_4_6".type  = "github";
  inputs."prologue-0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-V0_5_8".dir   = "V0_5_8";
  inputs."prologue-V0_5_8".owner = "nim-nix-pkgs";
  inputs."prologue-V0_5_8".ref   = "master";
  inputs."prologue-V0_5_8".repo  = "prologue";
  inputs."prologue-V0_5_8".type  = "github";
  inputs."prologue-V0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-V0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v_0_4_8".dir   = "v_0_4_8";
  inputs."prologue-v_0_4_8".owner = "nim-nix-pkgs";
  inputs."prologue-v_0_4_8".ref   = "master";
  inputs."prologue-v_0_4_8".repo  = "prologue";
  inputs."prologue-v_0_4_8".type  = "github";
  inputs."prologue-v_0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v_0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_1_6".dir   = "v0_1_6";
  inputs."prologue-v0_1_6".owner = "nim-nix-pkgs";
  inputs."prologue-v0_1_6".ref   = "master";
  inputs."prologue-v0_1_6".repo  = "prologue";
  inputs."prologue-v0_1_6".type  = "github";
  inputs."prologue-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_1_8".dir   = "v0_1_8";
  inputs."prologue-v0_1_8".owner = "nim-nix-pkgs";
  inputs."prologue-v0_1_8".ref   = "master";
  inputs."prologue-v0_1_8".repo  = "prologue";
  inputs."prologue-v0_1_8".type  = "github";
  inputs."prologue-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_2_0".dir   = "v0_2_0";
  inputs."prologue-v0_2_0".owner = "nim-nix-pkgs";
  inputs."prologue-v0_2_0".ref   = "master";
  inputs."prologue-v0_2_0".repo  = "prologue";
  inputs."prologue-v0_2_0".type  = "github";
  inputs."prologue-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_2_2".dir   = "v0_2_2";
  inputs."prologue-v0_2_2".owner = "nim-nix-pkgs";
  inputs."prologue-v0_2_2".ref   = "master";
  inputs."prologue-v0_2_2".repo  = "prologue";
  inputs."prologue-v0_2_2".type  = "github";
  inputs."prologue-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_2_4".dir   = "v0_2_4";
  inputs."prologue-v0_2_4".owner = "nim-nix-pkgs";
  inputs."prologue-v0_2_4".ref   = "master";
  inputs."prologue-v0_2_4".repo  = "prologue";
  inputs."prologue-v0_2_4".type  = "github";
  inputs."prologue-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_2_6".dir   = "v0_2_6";
  inputs."prologue-v0_2_6".owner = "nim-nix-pkgs";
  inputs."prologue-v0_2_6".ref   = "master";
  inputs."prologue-v0_2_6".repo  = "prologue";
  inputs."prologue-v0_2_6".type  = "github";
  inputs."prologue-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_2_8".dir   = "v0_2_8";
  inputs."prologue-v0_2_8".owner = "nim-nix-pkgs";
  inputs."prologue-v0_2_8".ref   = "master";
  inputs."prologue-v0_2_8".repo  = "prologue";
  inputs."prologue-v0_2_8".type  = "github";
  inputs."prologue-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_3_0".dir   = "v0_3_0";
  inputs."prologue-v0_3_0".owner = "nim-nix-pkgs";
  inputs."prologue-v0_3_0".ref   = "master";
  inputs."prologue-v0_3_0".repo  = "prologue";
  inputs."prologue-v0_3_0".type  = "github";
  inputs."prologue-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_3_2".dir   = "v0_3_2";
  inputs."prologue-v0_3_2".owner = "nim-nix-pkgs";
  inputs."prologue-v0_3_2".ref   = "master";
  inputs."prologue-v0_3_2".repo  = "prologue";
  inputs."prologue-v0_3_2".type  = "github";
  inputs."prologue-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_3_4".dir   = "v0_3_4";
  inputs."prologue-v0_3_4".owner = "nim-nix-pkgs";
  inputs."prologue-v0_3_4".ref   = "master";
  inputs."prologue-v0_3_4".repo  = "prologue";
  inputs."prologue-v0_3_4".type  = "github";
  inputs."prologue-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_3_6".dir   = "v0_3_6";
  inputs."prologue-v0_3_6".owner = "nim-nix-pkgs";
  inputs."prologue-v0_3_6".ref   = "master";
  inputs."prologue-v0_3_6".repo  = "prologue";
  inputs."prologue-v0_3_6".type  = "github";
  inputs."prologue-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_4_0".dir   = "v0_4_0";
  inputs."prologue-v0_4_0".owner = "nim-nix-pkgs";
  inputs."prologue-v0_4_0".ref   = "master";
  inputs."prologue-v0_4_0".repo  = "prologue";
  inputs."prologue-v0_4_0".type  = "github";
  inputs."prologue-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_4_2".dir   = "v0_4_2";
  inputs."prologue-v0_4_2".owner = "nim-nix-pkgs";
  inputs."prologue-v0_4_2".ref   = "master";
  inputs."prologue-v0_4_2".repo  = "prologue";
  inputs."prologue-v0_4_2".type  = "github";
  inputs."prologue-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_4_8".dir   = "v0_4_8";
  inputs."prologue-v0_4_8".owner = "nim-nix-pkgs";
  inputs."prologue-v0_4_8".ref   = "master";
  inputs."prologue-v0_4_8".repo  = "prologue";
  inputs."prologue-v0_4_8".type  = "github";
  inputs."prologue-v0_4_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_4_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_5_0".dir   = "v0_5_0";
  inputs."prologue-v0_5_0".owner = "nim-nix-pkgs";
  inputs."prologue-v0_5_0".ref   = "master";
  inputs."prologue-v0_5_0".repo  = "prologue";
  inputs."prologue-v0_5_0".type  = "github";
  inputs."prologue-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_5_2".dir   = "v0_5_2";
  inputs."prologue-v0_5_2".owner = "nim-nix-pkgs";
  inputs."prologue-v0_5_2".ref   = "master";
  inputs."prologue-v0_5_2".repo  = "prologue";
  inputs."prologue-v0_5_2".type  = "github";
  inputs."prologue-v0_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_5_4".dir   = "v0_5_4";
  inputs."prologue-v0_5_4".owner = "nim-nix-pkgs";
  inputs."prologue-v0_5_4".ref   = "master";
  inputs."prologue-v0_5_4".repo  = "prologue";
  inputs."prologue-v0_5_4".type  = "github";
  inputs."prologue-v0_5_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_5_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_5_6".dir   = "v0_5_6";
  inputs."prologue-v0_5_6".owner = "nim-nix-pkgs";
  inputs."prologue-v0_5_6".ref   = "master";
  inputs."prologue-v0_5_6".repo  = "prologue";
  inputs."prologue-v0_5_6".type  = "github";
  inputs."prologue-v0_5_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_5_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_5_8".dir   = "v0_5_8";
  inputs."prologue-v0_5_8".owner = "nim-nix-pkgs";
  inputs."prologue-v0_5_8".ref   = "master";
  inputs."prologue-v0_5_8".repo  = "prologue";
  inputs."prologue-v0_5_8".type  = "github";
  inputs."prologue-v0_5_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_5_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."prologue-v0_6_0".dir   = "v0_6_0";
  inputs."prologue-v0_6_0".owner = "nim-nix-pkgs";
  inputs."prologue-v0_6_0".ref   = "master";
  inputs."prologue-v0_6_0".repo  = "prologue";
  inputs."prologue-v0_6_0".type  = "github";
  inputs."prologue-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."prologue-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
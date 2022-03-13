{
  description = ''Bindings for the HDF5 data format C library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimhdf5-master".dir   = "master";
  inputs."nimhdf5-master".owner = "nim-nix-pkgs";
  inputs."nimhdf5-master".ref   = "master";
  inputs."nimhdf5-master".repo  = "nimhdf5";
  inputs."nimhdf5-master".type  = "github";
  inputs."nimhdf5-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_2_10".dir   = "v0_2_10";
  inputs."nimhdf5-v0_2_10".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_2_10".ref   = "master";
  inputs."nimhdf5-v0_2_10".repo  = "nimhdf5";
  inputs."nimhdf5-v0_2_10".type  = "github";
  inputs."nimhdf5-v0_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_2_11".dir   = "v0_2_11";
  inputs."nimhdf5-v0_2_11".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_2_11".ref   = "master";
  inputs."nimhdf5-v0_2_11".repo  = "nimhdf5";
  inputs."nimhdf5-v0_2_11".type  = "github";
  inputs."nimhdf5-v0_2_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_2_12".dir   = "v0_2_12";
  inputs."nimhdf5-v0_2_12".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_2_12".ref   = "master";
  inputs."nimhdf5-v0_2_12".repo  = "nimhdf5";
  inputs."nimhdf5-v0_2_12".type  = "github";
  inputs."nimhdf5-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_2_13".dir   = "v0_2_13";
  inputs."nimhdf5-v0_2_13".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_2_13".ref   = "master";
  inputs."nimhdf5-v0_2_13".repo  = "nimhdf5";
  inputs."nimhdf5-v0_2_13".type  = "github";
  inputs."nimhdf5-v0_2_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_2_14".dir   = "v0_2_14";
  inputs."nimhdf5-v0_2_14".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_2_14".ref   = "master";
  inputs."nimhdf5-v0_2_14".repo  = "nimhdf5";
  inputs."nimhdf5-v0_2_14".type  = "github";
  inputs."nimhdf5-v0_2_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_2_15".dir   = "v0_2_15";
  inputs."nimhdf5-v0_2_15".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_2_15".ref   = "master";
  inputs."nimhdf5-v0_2_15".repo  = "nimhdf5";
  inputs."nimhdf5-v0_2_15".type  = "github";
  inputs."nimhdf5-v0_2_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_2_6".dir   = "v0_2_6";
  inputs."nimhdf5-v0_2_6".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_2_6".ref   = "master";
  inputs."nimhdf5-v0_2_6".repo  = "nimhdf5";
  inputs."nimhdf5-v0_2_6".type  = "github";
  inputs."nimhdf5-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_2_7".dir   = "v0_2_7";
  inputs."nimhdf5-v0_2_7".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_2_7".ref   = "master";
  inputs."nimhdf5-v0_2_7".repo  = "nimhdf5";
  inputs."nimhdf5-v0_2_7".type  = "github";
  inputs."nimhdf5-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_2_8".dir   = "v0_2_8";
  inputs."nimhdf5-v0_2_8".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_2_8".ref   = "master";
  inputs."nimhdf5-v0_2_8".repo  = "nimhdf5";
  inputs."nimhdf5-v0_2_8".type  = "github";
  inputs."nimhdf5-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_2_9".dir   = "v0_2_9";
  inputs."nimhdf5-v0_2_9".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_2_9".ref   = "master";
  inputs."nimhdf5-v0_2_9".repo  = "nimhdf5";
  inputs."nimhdf5-v0_2_9".type  = "github";
  inputs."nimhdf5-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_0".dir   = "v0_3_0";
  inputs."nimhdf5-v0_3_0".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_0".ref   = "master";
  inputs."nimhdf5-v0_3_0".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_0".type  = "github";
  inputs."nimhdf5-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_1".dir   = "v0_3_1";
  inputs."nimhdf5-v0_3_1".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_1".ref   = "master";
  inputs."nimhdf5-v0_3_1".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_1".type  = "github";
  inputs."nimhdf5-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_10".dir   = "v0_3_10";
  inputs."nimhdf5-v0_3_10".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_10".ref   = "master";
  inputs."nimhdf5-v0_3_10".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_10".type  = "github";
  inputs."nimhdf5-v0_3_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_11".dir   = "v0_3_11";
  inputs."nimhdf5-v0_3_11".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_11".ref   = "master";
  inputs."nimhdf5-v0_3_11".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_11".type  = "github";
  inputs."nimhdf5-v0_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_12".dir   = "v0_3_12";
  inputs."nimhdf5-v0_3_12".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_12".ref   = "master";
  inputs."nimhdf5-v0_3_12".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_12".type  = "github";
  inputs."nimhdf5-v0_3_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_13".dir   = "v0_3_13";
  inputs."nimhdf5-v0_3_13".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_13".ref   = "master";
  inputs."nimhdf5-v0_3_13".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_13".type  = "github";
  inputs."nimhdf5-v0_3_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_14".dir   = "v0_3_14";
  inputs."nimhdf5-v0_3_14".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_14".ref   = "master";
  inputs."nimhdf5-v0_3_14".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_14".type  = "github";
  inputs."nimhdf5-v0_3_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_15".dir   = "v0_3_15";
  inputs."nimhdf5-v0_3_15".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_15".ref   = "master";
  inputs."nimhdf5-v0_3_15".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_15".type  = "github";
  inputs."nimhdf5-v0_3_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_2".dir   = "v0_3_2";
  inputs."nimhdf5-v0_3_2".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_2".ref   = "master";
  inputs."nimhdf5-v0_3_2".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_2".type  = "github";
  inputs."nimhdf5-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_3".dir   = "v0_3_3";
  inputs."nimhdf5-v0_3_3".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_3".ref   = "master";
  inputs."nimhdf5-v0_3_3".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_3".type  = "github";
  inputs."nimhdf5-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_4".dir   = "v0_3_4";
  inputs."nimhdf5-v0_3_4".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_4".ref   = "master";
  inputs."nimhdf5-v0_3_4".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_4".type  = "github";
  inputs."nimhdf5-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_5".dir   = "v0_3_5";
  inputs."nimhdf5-v0_3_5".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_5".ref   = "master";
  inputs."nimhdf5-v0_3_5".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_5".type  = "github";
  inputs."nimhdf5-v0_3_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_8".dir   = "v0_3_8";
  inputs."nimhdf5-v0_3_8".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_8".ref   = "master";
  inputs."nimhdf5-v0_3_8".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_8".type  = "github";
  inputs."nimhdf5-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_3_9".dir   = "v0_3_9";
  inputs."nimhdf5-v0_3_9".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_3_9".ref   = "master";
  inputs."nimhdf5-v0_3_9".repo  = "nimhdf5";
  inputs."nimhdf5-v0_3_9".type  = "github";
  inputs."nimhdf5-v0_3_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_3_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_4_0".dir   = "v0_4_0";
  inputs."nimhdf5-v0_4_0".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_4_0".ref   = "master";
  inputs."nimhdf5-v0_4_0".repo  = "nimhdf5";
  inputs."nimhdf5-v0_4_0".type  = "github";
  inputs."nimhdf5-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_4_1".dir   = "v0_4_1";
  inputs."nimhdf5-v0_4_1".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_4_1".ref   = "master";
  inputs."nimhdf5-v0_4_1".repo  = "nimhdf5";
  inputs."nimhdf5-v0_4_1".type  = "github";
  inputs."nimhdf5-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_4_2".dir   = "v0_4_2";
  inputs."nimhdf5-v0_4_2".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_4_2".ref   = "master";
  inputs."nimhdf5-v0_4_2".repo  = "nimhdf5";
  inputs."nimhdf5-v0_4_2".type  = "github";
  inputs."nimhdf5-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_4_3".dir   = "v0_4_3";
  inputs."nimhdf5-v0_4_3".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_4_3".ref   = "master";
  inputs."nimhdf5-v0_4_3".repo  = "nimhdf5";
  inputs."nimhdf5-v0_4_3".type  = "github";
  inputs."nimhdf5-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_4_4".dir   = "v0_4_4";
  inputs."nimhdf5-v0_4_4".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_4_4".ref   = "master";
  inputs."nimhdf5-v0_4_4".repo  = "nimhdf5";
  inputs."nimhdf5-v0_4_4".type  = "github";
  inputs."nimhdf5-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_4_5".dir   = "v0_4_5";
  inputs."nimhdf5-v0_4_5".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_4_5".ref   = "master";
  inputs."nimhdf5-v0_4_5".repo  = "nimhdf5";
  inputs."nimhdf5-v0_4_5".type  = "github";
  inputs."nimhdf5-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimhdf5-v0_4_6".dir   = "v0_4_6";
  inputs."nimhdf5-v0_4_6".owner = "nim-nix-pkgs";
  inputs."nimhdf5-v0_4_6".ref   = "master";
  inputs."nimhdf5-v0_4_6".repo  = "nimhdf5";
  inputs."nimhdf5-v0_4_6".type  = "github";
  inputs."nimhdf5-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimhdf5-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
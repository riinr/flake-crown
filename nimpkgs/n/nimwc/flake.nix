{
  description = ''A website management tool. Run the file and access your webpage.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimwc-master".dir   = "master";
  inputs."nimwc-master".owner = "nim-nix-pkgs";
  inputs."nimwc-master".ref   = "master";
  inputs."nimwc-master".repo  = "nimwc";
  inputs."nimwc-master".type  = "github";
  inputs."nimwc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v0_6_5".dir   = "v0_6_5";
  inputs."nimwc-v0_6_5".owner = "nim-nix-pkgs";
  inputs."nimwc-v0_6_5".ref   = "master";
  inputs."nimwc-v0_6_5".repo  = "nimwc";
  inputs."nimwc-v0_6_5".type  = "github";
  inputs."nimwc-v0_6_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v0_6_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_0_0".dir   = "v3_0_0";
  inputs."nimwc-v3_0_0".owner = "nim-nix-pkgs";
  inputs."nimwc-v3_0_0".ref   = "master";
  inputs."nimwc-v3_0_0".repo  = "nimwc";
  inputs."nimwc-v3_0_0".type  = "github";
  inputs."nimwc-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_0_1".dir   = "v3_0_1";
  inputs."nimwc-v3_0_1".owner = "nim-nix-pkgs";
  inputs."nimwc-v3_0_1".ref   = "master";
  inputs."nimwc-v3_0_1".repo  = "nimwc";
  inputs."nimwc-v3_0_1".type  = "github";
  inputs."nimwc-v3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_0_2".dir   = "v3_0_2";
  inputs."nimwc-v3_0_2".owner = "nim-nix-pkgs";
  inputs."nimwc-v3_0_2".ref   = "master";
  inputs."nimwc-v3_0_2".repo  = "nimwc";
  inputs."nimwc-v3_0_2".type  = "github";
  inputs."nimwc-v3_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_0_3".dir   = "v3_0_3";
  inputs."nimwc-v3_0_3".owner = "nim-nix-pkgs";
  inputs."nimwc-v3_0_3".ref   = "master";
  inputs."nimwc-v3_0_3".repo  = "nimwc";
  inputs."nimwc-v3_0_3".type  = "github";
  inputs."nimwc-v3_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_1_0".dir   = "v3_1_0";
  inputs."nimwc-v3_1_0".owner = "nim-nix-pkgs";
  inputs."nimwc-v3_1_0".ref   = "master";
  inputs."nimwc-v3_1_0".repo  = "nimwc";
  inputs."nimwc-v3_1_0".type  = "github";
  inputs."nimwc-v3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_2_0".dir   = "v3_2_0";
  inputs."nimwc-v3_2_0".owner = "nim-nix-pkgs";
  inputs."nimwc-v3_2_0".ref   = "master";
  inputs."nimwc-v3_2_0".repo  = "nimwc";
  inputs."nimwc-v3_2_0".type  = "github";
  inputs."nimwc-v3_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v3_3_0".dir   = "v3_3_0";
  inputs."nimwc-v3_3_0".owner = "nim-nix-pkgs";
  inputs."nimwc-v3_3_0".ref   = "master";
  inputs."nimwc-v3_3_0".repo  = "nimwc";
  inputs."nimwc-v3_3_0".type  = "github";
  inputs."nimwc-v3_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v3_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_0".dir   = "v4_0_0";
  inputs."nimwc-v4_0_0".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_0".ref   = "master";
  inputs."nimwc-v4_0_0".repo  = "nimwc";
  inputs."nimwc-v4_0_0".type  = "github";
  inputs."nimwc-v4_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_1".dir   = "v4_0_1";
  inputs."nimwc-v4_0_1".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_1".ref   = "master";
  inputs."nimwc-v4_0_1".repo  = "nimwc";
  inputs."nimwc-v4_0_1".type  = "github";
  inputs."nimwc-v4_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_10".dir   = "v4_0_10";
  inputs."nimwc-v4_0_10".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_10".ref   = "master";
  inputs."nimwc-v4_0_10".repo  = "nimwc";
  inputs."nimwc-v4_0_10".type  = "github";
  inputs."nimwc-v4_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_11".dir   = "v4_0_11";
  inputs."nimwc-v4_0_11".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_11".ref   = "master";
  inputs."nimwc-v4_0_11".repo  = "nimwc";
  inputs."nimwc-v4_0_11".type  = "github";
  inputs."nimwc-v4_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_3".dir   = "v4_0_3";
  inputs."nimwc-v4_0_3".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_3".ref   = "master";
  inputs."nimwc-v4_0_3".repo  = "nimwc";
  inputs."nimwc-v4_0_3".type  = "github";
  inputs."nimwc-v4_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_4".dir   = "v4_0_4";
  inputs."nimwc-v4_0_4".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_4".ref   = "master";
  inputs."nimwc-v4_0_4".repo  = "nimwc";
  inputs."nimwc-v4_0_4".type  = "github";
  inputs."nimwc-v4_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_5".dir   = "v4_0_5";
  inputs."nimwc-v4_0_5".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_5".ref   = "master";
  inputs."nimwc-v4_0_5".repo  = "nimwc";
  inputs."nimwc-v4_0_5".type  = "github";
  inputs."nimwc-v4_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_6".dir   = "v4_0_6";
  inputs."nimwc-v4_0_6".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_6".ref   = "master";
  inputs."nimwc-v4_0_6".repo  = "nimwc";
  inputs."nimwc-v4_0_6".type  = "github";
  inputs."nimwc-v4_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_7".dir   = "v4_0_7";
  inputs."nimwc-v4_0_7".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_7".ref   = "master";
  inputs."nimwc-v4_0_7".repo  = "nimwc";
  inputs."nimwc-v4_0_7".type  = "github";
  inputs."nimwc-v4_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_8".dir   = "v4_0_8";
  inputs."nimwc-v4_0_8".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_8".ref   = "master";
  inputs."nimwc-v4_0_8".repo  = "nimwc";
  inputs."nimwc-v4_0_8".type  = "github";
  inputs."nimwc-v4_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v4_0_9".dir   = "v4_0_9";
  inputs."nimwc-v4_0_9".owner = "nim-nix-pkgs";
  inputs."nimwc-v4_0_9".ref   = "master";
  inputs."nimwc-v4_0_9".repo  = "nimwc";
  inputs."nimwc-v4_0_9".type  = "github";
  inputs."nimwc-v4_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v4_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_0_0".dir   = "v5_0_0";
  inputs."nimwc-v5_0_0".owner = "nim-nix-pkgs";
  inputs."nimwc-v5_0_0".ref   = "master";
  inputs."nimwc-v5_0_0".repo  = "nimwc";
  inputs."nimwc-v5_0_0".type  = "github";
  inputs."nimwc-v5_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_1_0".dir   = "v5_1_0";
  inputs."nimwc-v5_1_0".owner = "nim-nix-pkgs";
  inputs."nimwc-v5_1_0".ref   = "master";
  inputs."nimwc-v5_1_0".repo  = "nimwc";
  inputs."nimwc-v5_1_0".type  = "github";
  inputs."nimwc-v5_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_1_1".dir   = "v5_1_1";
  inputs."nimwc-v5_1_1".owner = "nim-nix-pkgs";
  inputs."nimwc-v5_1_1".ref   = "master";
  inputs."nimwc-v5_1_1".repo  = "nimwc";
  inputs."nimwc-v5_1_1".type  = "github";
  inputs."nimwc-v5_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_5_0".dir   = "v5_5_0";
  inputs."nimwc-v5_5_0".owner = "nim-nix-pkgs";
  inputs."nimwc-v5_5_0".ref   = "master";
  inputs."nimwc-v5_5_0".repo  = "nimwc";
  inputs."nimwc-v5_5_0".type  = "github";
  inputs."nimwc-v5_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_5_1".dir   = "v5_5_1";
  inputs."nimwc-v5_5_1".owner = "nim-nix-pkgs";
  inputs."nimwc-v5_5_1".ref   = "master";
  inputs."nimwc-v5_5_1".repo  = "nimwc";
  inputs."nimwc-v5_5_1".type  = "github";
  inputs."nimwc-v5_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v5_5_2".dir   = "v5_5_2";
  inputs."nimwc-v5_5_2".owner = "nim-nix-pkgs";
  inputs."nimwc-v5_5_2".ref   = "master";
  inputs."nimwc-v5_5_2".repo  = "nimwc";
  inputs."nimwc-v5_5_2".type  = "github";
  inputs."nimwc-v5_5_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v5_5_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_0".dir   = "v6_0_0";
  inputs."nimwc-v6_0_0".owner = "nim-nix-pkgs";
  inputs."nimwc-v6_0_0".ref   = "master";
  inputs."nimwc-v6_0_0".repo  = "nimwc";
  inputs."nimwc-v6_0_0".type  = "github";
  inputs."nimwc-v6_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_1".dir   = "v6_0_1";
  inputs."nimwc-v6_0_1".owner = "nim-nix-pkgs";
  inputs."nimwc-v6_0_1".ref   = "master";
  inputs."nimwc-v6_0_1".repo  = "nimwc";
  inputs."nimwc-v6_0_1".type  = "github";
  inputs."nimwc-v6_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_2".dir   = "v6_0_2";
  inputs."nimwc-v6_0_2".owner = "nim-nix-pkgs";
  inputs."nimwc-v6_0_2".ref   = "master";
  inputs."nimwc-v6_0_2".repo  = "nimwc";
  inputs."nimwc-v6_0_2".type  = "github";
  inputs."nimwc-v6_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_3".dir   = "v6_0_3";
  inputs."nimwc-v6_0_3".owner = "nim-nix-pkgs";
  inputs."nimwc-v6_0_3".ref   = "master";
  inputs."nimwc-v6_0_3".repo  = "nimwc";
  inputs."nimwc-v6_0_3".type  = "github";
  inputs."nimwc-v6_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_4".dir   = "v6_0_4";
  inputs."nimwc-v6_0_4".owner = "nim-nix-pkgs";
  inputs."nimwc-v6_0_4".ref   = "master";
  inputs."nimwc-v6_0_4".repo  = "nimwc";
  inputs."nimwc-v6_0_4".type  = "github";
  inputs."nimwc-v6_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_0_6".dir   = "v6_0_6";
  inputs."nimwc-v6_0_6".owner = "nim-nix-pkgs";
  inputs."nimwc-v6_0_6".ref   = "master";
  inputs."nimwc-v6_0_6".repo  = "nimwc";
  inputs."nimwc-v6_0_6".type  = "github";
  inputs."nimwc-v6_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_1_0".dir   = "v6_1_0";
  inputs."nimwc-v6_1_0".owner = "nim-nix-pkgs";
  inputs."nimwc-v6_1_0".ref   = "master";
  inputs."nimwc-v6_1_0".repo  = "nimwc";
  inputs."nimwc-v6_1_0".type  = "github";
  inputs."nimwc-v6_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_1_1".dir   = "v6_1_1";
  inputs."nimwc-v6_1_1".owner = "nim-nix-pkgs";
  inputs."nimwc-v6_1_1".ref   = "master";
  inputs."nimwc-v6_1_1".repo  = "nimwc";
  inputs."nimwc-v6_1_1".type  = "github";
  inputs."nimwc-v6_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwc-v6_1_2".dir   = "v6_1_2";
  inputs."nimwc-v6_1_2".owner = "nim-nix-pkgs";
  inputs."nimwc-v6_1_2".ref   = "master";
  inputs."nimwc-v6_1_2".repo  = "nimwc";
  inputs."nimwc-v6_1_2".type  = "github";
  inputs."nimwc-v6_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwc-v6_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
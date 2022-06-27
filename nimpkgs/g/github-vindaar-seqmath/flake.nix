{
  description = ''math for sequences and nested sequences'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."seqmath-master".dir   = "master";
  inputs."seqmath-master".owner = "nim-nix-pkgs";
  inputs."seqmath-master".ref   = "master";
  inputs."seqmath-master".repo  = "seqmath";
  inputs."seqmath-master".type  = "github";
  inputs."seqmath-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_10".dir   = "v0_1_10";
  inputs."seqmath-v0_1_10".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_10".ref   = "master";
  inputs."seqmath-v0_1_10".repo  = "seqmath";
  inputs."seqmath-v0_1_10".type  = "github";
  inputs."seqmath-v0_1_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_11".dir   = "v0_1_11";
  inputs."seqmath-v0_1_11".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_11".ref   = "master";
  inputs."seqmath-v0_1_11".repo  = "seqmath";
  inputs."seqmath-v0_1_11".type  = "github";
  inputs."seqmath-v0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_12".dir   = "v0_1_12";
  inputs."seqmath-v0_1_12".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_12".ref   = "master";
  inputs."seqmath-v0_1_12".repo  = "seqmath";
  inputs."seqmath-v0_1_12".type  = "github";
  inputs."seqmath-v0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_13".dir   = "v0_1_13";
  inputs."seqmath-v0_1_13".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_13".ref   = "master";
  inputs."seqmath-v0_1_13".repo  = "seqmath";
  inputs."seqmath-v0_1_13".type  = "github";
  inputs."seqmath-v0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_3".dir   = "v0_1_3";
  inputs."seqmath-v0_1_3".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_3".ref   = "master";
  inputs."seqmath-v0_1_3".repo  = "seqmath";
  inputs."seqmath-v0_1_3".type  = "github";
  inputs."seqmath-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_4".dir   = "v0_1_4";
  inputs."seqmath-v0_1_4".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_4".ref   = "master";
  inputs."seqmath-v0_1_4".repo  = "seqmath";
  inputs."seqmath-v0_1_4".type  = "github";
  inputs."seqmath-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_5".dir   = "v0_1_5";
  inputs."seqmath-v0_1_5".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_5".ref   = "master";
  inputs."seqmath-v0_1_5".repo  = "seqmath";
  inputs."seqmath-v0_1_5".type  = "github";
  inputs."seqmath-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_6".dir   = "v0_1_6";
  inputs."seqmath-v0_1_6".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_6".ref   = "master";
  inputs."seqmath-v0_1_6".repo  = "seqmath";
  inputs."seqmath-v0_1_6".type  = "github";
  inputs."seqmath-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_7".dir   = "v0_1_7";
  inputs."seqmath-v0_1_7".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_7".ref   = "master";
  inputs."seqmath-v0_1_7".repo  = "seqmath";
  inputs."seqmath-v0_1_7".type  = "github";
  inputs."seqmath-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_8".dir   = "v0_1_8";
  inputs."seqmath-v0_1_8".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_8".ref   = "master";
  inputs."seqmath-v0_1_8".repo  = "seqmath";
  inputs."seqmath-v0_1_8".type  = "github";
  inputs."seqmath-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seqmath-v0_1_9".dir   = "v0_1_9";
  inputs."seqmath-v0_1_9".owner = "nim-nix-pkgs";
  inputs."seqmath-v0_1_9".ref   = "master";
  inputs."seqmath-v0_1_9".repo  = "seqmath";
  inputs."seqmath-v0_1_9".type  = "github";
  inputs."seqmath-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seqmath-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
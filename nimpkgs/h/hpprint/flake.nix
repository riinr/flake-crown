{
  description = ''Pretty-printer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hpprint-master".dir   = "master";
  inputs."hpprint-master".owner = "nim-nix-pkgs";
  inputs."hpprint-master".ref   = "master";
  inputs."hpprint-master".repo  = "hpprint";
  inputs."hpprint-master".type  = "github";
  inputs."hpprint-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_10".dir   = "v0_2_10";
  inputs."hpprint-v0_2_10".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_10".ref   = "master";
  inputs."hpprint-v0_2_10".repo  = "hpprint";
  inputs."hpprint-v0_2_10".type  = "github";
  inputs."hpprint-v0_2_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_12".dir   = "v0_2_12";
  inputs."hpprint-v0_2_12".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_12".ref   = "master";
  inputs."hpprint-v0_2_12".repo  = "hpprint";
  inputs."hpprint-v0_2_12".type  = "github";
  inputs."hpprint-v0_2_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_13".dir   = "v0_2_13";
  inputs."hpprint-v0_2_13".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_13".ref   = "master";
  inputs."hpprint-v0_2_13".repo  = "hpprint";
  inputs."hpprint-v0_2_13".type  = "github";
  inputs."hpprint-v0_2_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_14".dir   = "v0_2_14";
  inputs."hpprint-v0_2_14".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_14".ref   = "master";
  inputs."hpprint-v0_2_14".repo  = "hpprint";
  inputs."hpprint-v0_2_14".type  = "github";
  inputs."hpprint-v0_2_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_15".dir   = "v0_2_15";
  inputs."hpprint-v0_2_15".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_15".ref   = "master";
  inputs."hpprint-v0_2_15".repo  = "hpprint";
  inputs."hpprint-v0_2_15".type  = "github";
  inputs."hpprint-v0_2_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_16".dir   = "v0_2_16";
  inputs."hpprint-v0_2_16".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_16".ref   = "master";
  inputs."hpprint-v0_2_16".repo  = "hpprint";
  inputs."hpprint-v0_2_16".type  = "github";
  inputs."hpprint-v0_2_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_17".dir   = "v0_2_17";
  inputs."hpprint-v0_2_17".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_17".ref   = "master";
  inputs."hpprint-v0_2_17".repo  = "hpprint";
  inputs."hpprint-v0_2_17".type  = "github";
  inputs."hpprint-v0_2_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_18".dir   = "v0_2_18";
  inputs."hpprint-v0_2_18".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_18".ref   = "master";
  inputs."hpprint-v0_2_18".repo  = "hpprint";
  inputs."hpprint-v0_2_18".type  = "github";
  inputs."hpprint-v0_2_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_4".dir   = "v0_2_4";
  inputs."hpprint-v0_2_4".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_4".ref   = "master";
  inputs."hpprint-v0_2_4".repo  = "hpprint";
  inputs."hpprint-v0_2_4".type  = "github";
  inputs."hpprint-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_5".dir   = "v0_2_5";
  inputs."hpprint-v0_2_5".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_5".ref   = "master";
  inputs."hpprint-v0_2_5".repo  = "hpprint";
  inputs."hpprint-v0_2_5".type  = "github";
  inputs."hpprint-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_6".dir   = "v0_2_6";
  inputs."hpprint-v0_2_6".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_6".ref   = "master";
  inputs."hpprint-v0_2_6".repo  = "hpprint";
  inputs."hpprint-v0_2_6".type  = "github";
  inputs."hpprint-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_7".dir   = "v0_2_7";
  inputs."hpprint-v0_2_7".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_7".ref   = "master";
  inputs."hpprint-v0_2_7".repo  = "hpprint";
  inputs."hpprint-v0_2_7".type  = "github";
  inputs."hpprint-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_8".dir   = "v0_2_8";
  inputs."hpprint-v0_2_8".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_8".ref   = "master";
  inputs."hpprint-v0_2_8".repo  = "hpprint";
  inputs."hpprint-v0_2_8".type  = "github";
  inputs."hpprint-v0_2_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint-v0_2_9".dir   = "v0_2_9";
  inputs."hpprint-v0_2_9".owner = "nim-nix-pkgs";
  inputs."hpprint-v0_2_9".ref   = "master";
  inputs."hpprint-v0_2_9".repo  = "hpprint";
  inputs."hpprint-v0_2_9".type  = "github";
  inputs."hpprint-v0_2_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint-v0_2_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
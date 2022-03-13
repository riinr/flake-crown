{
  description = ''Fast and just works JSON-Binding for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sam-master".dir   = "master";
  inputs."sam-master".owner = "nim-nix-pkgs";
  inputs."sam-master".ref   = "master";
  inputs."sam-master".repo  = "sam";
  inputs."sam-master".type  = "github";
  inputs."sam-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_11".dir   = "0_1_11";
  inputs."sam-0_1_11".owner = "nim-nix-pkgs";
  inputs."sam-0_1_11".ref   = "master";
  inputs."sam-0_1_11".repo  = "sam";
  inputs."sam-0_1_11".type  = "github";
  inputs."sam-0_1_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_12".dir   = "0_1_12";
  inputs."sam-0_1_12".owner = "nim-nix-pkgs";
  inputs."sam-0_1_12".ref   = "master";
  inputs."sam-0_1_12".repo  = "sam";
  inputs."sam-0_1_12".type  = "github";
  inputs."sam-0_1_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_13".dir   = "0_1_13";
  inputs."sam-0_1_13".owner = "nim-nix-pkgs";
  inputs."sam-0_1_13".ref   = "master";
  inputs."sam-0_1_13".repo  = "sam";
  inputs."sam-0_1_13".type  = "github";
  inputs."sam-0_1_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_14".dir   = "0_1_14";
  inputs."sam-0_1_14".owner = "nim-nix-pkgs";
  inputs."sam-0_1_14".ref   = "master";
  inputs."sam-0_1_14".repo  = "sam";
  inputs."sam-0_1_14".type  = "github";
  inputs."sam-0_1_14".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_14".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_15".dir   = "0_1_15";
  inputs."sam-0_1_15".owner = "nim-nix-pkgs";
  inputs."sam-0_1_15".ref   = "master";
  inputs."sam-0_1_15".repo  = "sam";
  inputs."sam-0_1_15".type  = "github";
  inputs."sam-0_1_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_16".dir   = "0_1_16";
  inputs."sam-0_1_16".owner = "nim-nix-pkgs";
  inputs."sam-0_1_16".ref   = "master";
  inputs."sam-0_1_16".repo  = "sam";
  inputs."sam-0_1_16".type  = "github";
  inputs."sam-0_1_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_17".dir   = "0_1_17";
  inputs."sam-0_1_17".owner = "nim-nix-pkgs";
  inputs."sam-0_1_17".ref   = "master";
  inputs."sam-0_1_17".repo  = "sam";
  inputs."sam-0_1_17".type  = "github";
  inputs."sam-0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_2_1".dir   = "0_1_2_1";
  inputs."sam-0_1_2_1".owner = "nim-nix-pkgs";
  inputs."sam-0_1_2_1".ref   = "master";
  inputs."sam-0_1_2_1".repo  = "sam";
  inputs."sam-0_1_2_1".type  = "github";
  inputs."sam-0_1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_3".dir   = "0_1_3";
  inputs."sam-0_1_3".owner = "nim-nix-pkgs";
  inputs."sam-0_1_3".ref   = "master";
  inputs."sam-0_1_3".repo  = "sam";
  inputs."sam-0_1_3".type  = "github";
  inputs."sam-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_4".dir   = "0_1_4";
  inputs."sam-0_1_4".owner = "nim-nix-pkgs";
  inputs."sam-0_1_4".ref   = "master";
  inputs."sam-0_1_4".repo  = "sam";
  inputs."sam-0_1_4".type  = "github";
  inputs."sam-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_5".dir   = "0_1_5";
  inputs."sam-0_1_5".owner = "nim-nix-pkgs";
  inputs."sam-0_1_5".ref   = "master";
  inputs."sam-0_1_5".repo  = "sam";
  inputs."sam-0_1_5".type  = "github";
  inputs."sam-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_6".dir   = "0_1_6";
  inputs."sam-0_1_6".owner = "nim-nix-pkgs";
  inputs."sam-0_1_6".ref   = "master";
  inputs."sam-0_1_6".repo  = "sam";
  inputs."sam-0_1_6".type  = "github";
  inputs."sam-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_7".dir   = "0_1_7";
  inputs."sam-0_1_7".owner = "nim-nix-pkgs";
  inputs."sam-0_1_7".ref   = "master";
  inputs."sam-0_1_7".repo  = "sam";
  inputs."sam-0_1_7".type  = "github";
  inputs."sam-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_8".dir   = "0_1_8";
  inputs."sam-0_1_8".owner = "nim-nix-pkgs";
  inputs."sam-0_1_8".ref   = "master";
  inputs."sam-0_1_8".repo  = "sam";
  inputs."sam-0_1_8".type  = "github";
  inputs."sam-0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sam-0_1_9".dir   = "0_1_9";
  inputs."sam-0_1_9".owner = "nim-nix-pkgs";
  inputs."sam-0_1_9".ref   = "master";
  inputs."sam-0_1_9".repo  = "sam";
  inputs."sam-0_1_9".type  = "github";
  inputs."sam-0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sam-0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
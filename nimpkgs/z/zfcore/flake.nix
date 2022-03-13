{
  description = ''zfcore is high performance asynchttpserver and web framework for nim lang'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zfcore-master".dir   = "master";
  inputs."zfcore-master".owner = "nim-nix-pkgs";
  inputs."zfcore-master".ref   = "master";
  inputs."zfcore-master".repo  = "zfcore";
  inputs."zfcore-master".type  = "github";
  inputs."zfcore-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-1_0_29".dir   = "1_0_29";
  inputs."zfcore-1_0_29".owner = "nim-nix-pkgs";
  inputs."zfcore-1_0_29".ref   = "master";
  inputs."zfcore-1_0_29".repo  = "zfcore";
  inputs."zfcore-1_0_29".type  = "github";
  inputs."zfcore-1_0_29".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-1_0_29".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-1_0_30".dir   = "1_0_30";
  inputs."zfcore-1_0_30".owner = "nim-nix-pkgs";
  inputs."zfcore-1_0_30".ref   = "master";
  inputs."zfcore-1_0_30".repo  = "zfcore";
  inputs."zfcore-1_0_30".type  = "github";
  inputs."zfcore-1_0_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-1_0_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-1_1_1".dir   = "1_1_1";
  inputs."zfcore-1_1_1".owner = "nim-nix-pkgs";
  inputs."zfcore-1_1_1".ref   = "master";
  inputs."zfcore-1_1_1".repo  = "zfcore";
  inputs."zfcore-1_1_1".type  = "github";
  inputs."zfcore-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-1_1_2".dir   = "1_1_2";
  inputs."zfcore-1_1_2".owner = "nim-nix-pkgs";
  inputs."zfcore-1_1_2".ref   = "master";
  inputs."zfcore-1_1_2".repo  = "zfcore";
  inputs."zfcore-1_1_2".type  = "github";
  inputs."zfcore-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-V1_0_11".dir   = "V1_0_11";
  inputs."zfcore-V1_0_11".owner = "nim-nix-pkgs";
  inputs."zfcore-V1_0_11".ref   = "master";
  inputs."zfcore-V1_0_11".repo  = "zfcore";
  inputs."zfcore-V1_0_11".type  = "github";
  inputs."zfcore-V1_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-V1_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_1".dir   = "v1_0_1";
  inputs."zfcore-v1_0_1".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_1".ref   = "master";
  inputs."zfcore-v1_0_1".repo  = "zfcore";
  inputs."zfcore-v1_0_1".type  = "github";
  inputs."zfcore-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_15".dir   = "v1_0_15";
  inputs."zfcore-v1_0_15".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_15".ref   = "master";
  inputs."zfcore-v1_0_15".repo  = "zfcore";
  inputs."zfcore-v1_0_15".type  = "github";
  inputs."zfcore-v1_0_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_16".dir   = "v1_0_16";
  inputs."zfcore-v1_0_16".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_16".ref   = "master";
  inputs."zfcore-v1_0_16".repo  = "zfcore";
  inputs."zfcore-v1_0_16".type  = "github";
  inputs."zfcore-v1_0_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_18".dir   = "v1_0_18";
  inputs."zfcore-v1_0_18".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_18".ref   = "master";
  inputs."zfcore-v1_0_18".repo  = "zfcore";
  inputs."zfcore-v1_0_18".type  = "github";
  inputs."zfcore-v1_0_18".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_18".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_2".dir   = "v1_0_2";
  inputs."zfcore-v1_0_2".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_2".ref   = "master";
  inputs."zfcore-v1_0_2".repo  = "zfcore";
  inputs."zfcore-v1_0_2".type  = "github";
  inputs."zfcore-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_3".dir   = "v1_0_3";
  inputs."zfcore-v1_0_3".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_3".ref   = "master";
  inputs."zfcore-v1_0_3".repo  = "zfcore";
  inputs."zfcore-v1_0_3".type  = "github";
  inputs."zfcore-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_4".dir   = "v1_0_4";
  inputs."zfcore-v1_0_4".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_4".ref   = "master";
  inputs."zfcore-v1_0_4".repo  = "zfcore";
  inputs."zfcore-v1_0_4".type  = "github";
  inputs."zfcore-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_6".dir   = "v1_0_6";
  inputs."zfcore-v1_0_6".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_6".ref   = "master";
  inputs."zfcore-v1_0_6".repo  = "zfcore";
  inputs."zfcore-v1_0_6".type  = "github";
  inputs."zfcore-v1_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_6-stable".dir   = "v1_0_6-stable";
  inputs."zfcore-v1_0_6-stable".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_6-stable".ref   = "master";
  inputs."zfcore-v1_0_6-stable".repo  = "zfcore";
  inputs."zfcore-v1_0_6-stable".type  = "github";
  inputs."zfcore-v1_0_6-stable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_6-stable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_7".dir   = "v1_0_7";
  inputs."zfcore-v1_0_7".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_7".ref   = "master";
  inputs."zfcore-v1_0_7".repo  = "zfcore";
  inputs."zfcore-v1_0_7".type  = "github";
  inputs."zfcore-v1_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_8".dir   = "v1_0_8";
  inputs."zfcore-v1_0_8".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_8".ref   = "master";
  inputs."zfcore-v1_0_8".repo  = "zfcore";
  inputs."zfcore-v1_0_8".type  = "github";
  inputs."zfcore-v1_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_0_8-1".dir   = "v1_0_8-1";
  inputs."zfcore-v1_0_8-1".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_0_8-1".ref   = "master";
  inputs."zfcore-v1_0_8-1".repo  = "zfcore";
  inputs."zfcore-v1_0_8-1".type  = "github";
  inputs."zfcore-v1_0_8-1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_0_8-1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_1_5".dir   = "v1_1_5";
  inputs."zfcore-v1_1_5".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_1_5".ref   = "master";
  inputs."zfcore-v1_1_5".repo  = "zfcore";
  inputs."zfcore-v1_1_5".type  = "github";
  inputs."zfcore-v1_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_1_6".dir   = "v1_1_6";
  inputs."zfcore-v1_1_6".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_1_6".ref   = "master";
  inputs."zfcore-v1_1_6".repo  = "zfcore";
  inputs."zfcore-v1_1_6".type  = "github";
  inputs."zfcore-v1_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zfcore-v1_1_7".dir   = "v1_1_7";
  inputs."zfcore-v1_1_7".owner = "nim-nix-pkgs";
  inputs."zfcore-v1_1_7".ref   = "master";
  inputs."zfcore-v1_1_7".repo  = "zfcore";
  inputs."zfcore-v1_1_7".type  = "github";
  inputs."zfcore-v1_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zfcore-v1_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
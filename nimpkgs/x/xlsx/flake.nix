{
  description = ''Read and parse Excel files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xlsx-master".dir   = "master";
  inputs."xlsx-master".owner = "nim-nix-pkgs";
  inputs."xlsx-master".ref   = "master";
  inputs."xlsx-master".repo  = "xlsx";
  inputs."xlsx-master".type  = "github";
  inputs."xlsx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-0_4_5".dir   = "0_4_5";
  inputs."xlsx-0_4_5".owner = "nim-nix-pkgs";
  inputs."xlsx-0_4_5".ref   = "master";
  inputs."xlsx-0_4_5".repo  = "xlsx";
  inputs."xlsx-0_4_5".type  = "github";
  inputs."xlsx-0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_1_0".dir   = "v0_1_0";
  inputs."xlsx-v0_1_0".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_1_0".ref   = "master";
  inputs."xlsx-v0_1_0".repo  = "xlsx";
  inputs."xlsx-v0_1_0".type  = "github";
  inputs."xlsx-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_1_2".dir   = "v0_1_2";
  inputs."xlsx-v0_1_2".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_1_2".ref   = "master";
  inputs."xlsx-v0_1_2".repo  = "xlsx";
  inputs."xlsx-v0_1_2".type  = "github";
  inputs."xlsx-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_1_6".dir   = "v0_1_6";
  inputs."xlsx-v0_1_6".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_1_6".ref   = "master";
  inputs."xlsx-v0_1_6".repo  = "xlsx";
  inputs."xlsx-v0_1_6".type  = "github";
  inputs."xlsx-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_1_8".dir   = "v0_1_8";
  inputs."xlsx-v0_1_8".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_1_8".ref   = "master";
  inputs."xlsx-v0_1_8".repo  = "xlsx";
  inputs."xlsx-v0_1_8".type  = "github";
  inputs."xlsx-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_2_0".dir   = "v0_2_0";
  inputs."xlsx-v0_2_0".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_2_0".ref   = "master";
  inputs."xlsx-v0_2_0".repo  = "xlsx";
  inputs."xlsx-v0_2_0".type  = "github";
  inputs."xlsx-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_3_0".dir   = "v0_3_0";
  inputs."xlsx-v0_3_0".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_3_0".ref   = "master";
  inputs."xlsx-v0_3_0".repo  = "xlsx";
  inputs."xlsx-v0_3_0".type  = "github";
  inputs."xlsx-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_3_2".dir   = "v0_3_2";
  inputs."xlsx-v0_3_2".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_3_2".ref   = "master";
  inputs."xlsx-v0_3_2".repo  = "xlsx";
  inputs."xlsx-v0_3_2".type  = "github";
  inputs."xlsx-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_3_6".dir   = "v0_3_6";
  inputs."xlsx-v0_3_6".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_3_6".ref   = "master";
  inputs."xlsx-v0_3_6".repo  = "xlsx";
  inputs."xlsx-v0_3_6".type  = "github";
  inputs."xlsx-v0_3_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_3_8".dir   = "v0_3_8";
  inputs."xlsx-v0_3_8".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_3_8".ref   = "master";
  inputs."xlsx-v0_3_8".repo  = "xlsx";
  inputs."xlsx-v0_3_8".type  = "github";
  inputs."xlsx-v0_3_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_3_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_4_0".dir   = "v0_4_0";
  inputs."xlsx-v0_4_0".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_4_0".ref   = "master";
  inputs."xlsx-v0_4_0".repo  = "xlsx";
  inputs."xlsx-v0_4_0".type  = "github";
  inputs."xlsx-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_4_2".dir   = "v0_4_2";
  inputs."xlsx-v0_4_2".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_4_2".ref   = "master";
  inputs."xlsx-v0_4_2".repo  = "xlsx";
  inputs."xlsx-v0_4_2".type  = "github";
  inputs."xlsx-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_4_4".dir   = "v0_4_4";
  inputs."xlsx-v0_4_4".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_4_4".ref   = "master";
  inputs."xlsx-v0_4_4".repo  = "xlsx";
  inputs."xlsx-v0_4_4".type  = "github";
  inputs."xlsx-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xlsx-v0_4_6".dir   = "v0_4_6";
  inputs."xlsx-v0_4_6".owner = "nim-nix-pkgs";
  inputs."xlsx-v0_4_6".ref   = "master";
  inputs."xlsx-v0_4_6".repo  = "xlsx";
  inputs."xlsx-v0_4_6".type  = "github";
  inputs."xlsx-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xlsx-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
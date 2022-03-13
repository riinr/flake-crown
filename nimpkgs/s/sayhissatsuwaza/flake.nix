{
  description = ''Say hissatsuwaza (special attack) on your terminal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sayhissatsuwaza-master".dir   = "master";
  inputs."sayhissatsuwaza-master".owner = "nim-nix-pkgs";
  inputs."sayhissatsuwaza-master".ref   = "master";
  inputs."sayhissatsuwaza-master".repo  = "sayhissatsuwaza";
  inputs."sayhissatsuwaza-master".type  = "github";
  inputs."sayhissatsuwaza-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_1_0".dir   = "v0_1_0";
  inputs."sayhissatsuwaza-v0_1_0".owner = "nim-nix-pkgs";
  inputs."sayhissatsuwaza-v0_1_0".ref   = "master";
  inputs."sayhissatsuwaza-v0_1_0".repo  = "sayhissatsuwaza";
  inputs."sayhissatsuwaza-v0_1_0".type  = "github";
  inputs."sayhissatsuwaza-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_2_0".dir   = "v0_2_0";
  inputs."sayhissatsuwaza-v0_2_0".owner = "nim-nix-pkgs";
  inputs."sayhissatsuwaza-v0_2_0".ref   = "master";
  inputs."sayhissatsuwaza-v0_2_0".repo  = "sayhissatsuwaza";
  inputs."sayhissatsuwaza-v0_2_0".type  = "github";
  inputs."sayhissatsuwaza-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_3_0".dir   = "v0_3_0";
  inputs."sayhissatsuwaza-v0_3_0".owner = "nim-nix-pkgs";
  inputs."sayhissatsuwaza-v0_3_0".ref   = "master";
  inputs."sayhissatsuwaza-v0_3_0".repo  = "sayhissatsuwaza";
  inputs."sayhissatsuwaza-v0_3_0".type  = "github";
  inputs."sayhissatsuwaza-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_4_0".dir   = "v0_4_0";
  inputs."sayhissatsuwaza-v0_4_0".owner = "nim-nix-pkgs";
  inputs."sayhissatsuwaza-v0_4_0".ref   = "master";
  inputs."sayhissatsuwaza-v0_4_0".repo  = "sayhissatsuwaza";
  inputs."sayhissatsuwaza-v0_4_0".type  = "github";
  inputs."sayhissatsuwaza-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_5_0".dir   = "v0_5_0";
  inputs."sayhissatsuwaza-v0_5_0".owner = "nim-nix-pkgs";
  inputs."sayhissatsuwaza-v0_5_0".ref   = "master";
  inputs."sayhissatsuwaza-v0_5_0".repo  = "sayhissatsuwaza";
  inputs."sayhissatsuwaza-v0_5_0".type  = "github";
  inputs."sayhissatsuwaza-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_6_0".dir   = "v0_6_0";
  inputs."sayhissatsuwaza-v0_6_0".owner = "nim-nix-pkgs";
  inputs."sayhissatsuwaza-v0_6_0".ref   = "master";
  inputs."sayhissatsuwaza-v0_6_0".repo  = "sayhissatsuwaza";
  inputs."sayhissatsuwaza-v0_6_0".type  = "github";
  inputs."sayhissatsuwaza-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_7_0".dir   = "v0_7_0";
  inputs."sayhissatsuwaza-v0_7_0".owner = "nim-nix-pkgs";
  inputs."sayhissatsuwaza-v0_7_0".ref   = "master";
  inputs."sayhissatsuwaza-v0_7_0".repo  = "sayhissatsuwaza";
  inputs."sayhissatsuwaza-v0_7_0".type  = "github";
  inputs."sayhissatsuwaza-v0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sayhissatsuwaza-v0_8_0".dir   = "v0_8_0";
  inputs."sayhissatsuwaza-v0_8_0".owner = "nim-nix-pkgs";
  inputs."sayhissatsuwaza-v0_8_0".ref   = "master";
  inputs."sayhissatsuwaza-v0_8_0".repo  = "sayhissatsuwaza";
  inputs."sayhissatsuwaza-v0_8_0".type  = "github";
  inputs."sayhissatsuwaza-v0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sayhissatsuwaza-v0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
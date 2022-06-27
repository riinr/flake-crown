{
  description = ''A TUI -> GUI library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimwave-master".dir   = "master";
  inputs."nimwave-master".owner = "nim-nix-pkgs";
  inputs."nimwave-master".ref   = "master";
  inputs."nimwave-master".repo  = "nimwave";
  inputs."nimwave-master".type  = "github";
  inputs."nimwave-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwave-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwave-0_1_0".dir   = "0_1_0";
  inputs."nimwave-0_1_0".owner = "nim-nix-pkgs";
  inputs."nimwave-0_1_0".ref   = "master";
  inputs."nimwave-0_1_0".repo  = "nimwave";
  inputs."nimwave-0_1_0".type  = "github";
  inputs."nimwave-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwave-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwave-0_2_0".dir   = "0_2_0";
  inputs."nimwave-0_2_0".owner = "nim-nix-pkgs";
  inputs."nimwave-0_2_0".ref   = "master";
  inputs."nimwave-0_2_0".repo  = "nimwave";
  inputs."nimwave-0_2_0".type  = "github";
  inputs."nimwave-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwave-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwave-0_3_0".dir   = "0_3_0";
  inputs."nimwave-0_3_0".owner = "nim-nix-pkgs";
  inputs."nimwave-0_3_0".ref   = "master";
  inputs."nimwave-0_3_0".repo  = "nimwave";
  inputs."nimwave-0_3_0".type  = "github";
  inputs."nimwave-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwave-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwave-0_4_0".dir   = "0_4_0";
  inputs."nimwave-0_4_0".owner = "nim-nix-pkgs";
  inputs."nimwave-0_4_0".ref   = "master";
  inputs."nimwave-0_4_0".repo  = "nimwave";
  inputs."nimwave-0_4_0".type  = "github";
  inputs."nimwave-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwave-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwave-0_5_0".dir   = "0_5_0";
  inputs."nimwave-0_5_0".owner = "nim-nix-pkgs";
  inputs."nimwave-0_5_0".ref   = "master";
  inputs."nimwave-0_5_0".repo  = "nimwave";
  inputs."nimwave-0_5_0".type  = "github";
  inputs."nimwave-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwave-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwave-0_6_0".dir   = "0_6_0";
  inputs."nimwave-0_6_0".owner = "nim-nix-pkgs";
  inputs."nimwave-0_6_0".ref   = "master";
  inputs."nimwave-0_6_0".repo  = "nimwave";
  inputs."nimwave-0_6_0".type  = "github";
  inputs."nimwave-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwave-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwave-0_7_0".dir   = "0_7_0";
  inputs."nimwave-0_7_0".owner = "nim-nix-pkgs";
  inputs."nimwave-0_7_0".ref   = "master";
  inputs."nimwave-0_7_0".repo  = "nimwave";
  inputs."nimwave-0_7_0".type  = "github";
  inputs."nimwave-0_7_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwave-0_7_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimwave-0_8_0".dir   = "0_8_0";
  inputs."nimwave-0_8_0".owner = "nim-nix-pkgs";
  inputs."nimwave-0_8_0".ref   = "master";
  inputs."nimwave-0_8_0".repo  = "nimwave";
  inputs."nimwave-0_8_0".type  = "github";
  inputs."nimwave-0_8_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimwave-0_8_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
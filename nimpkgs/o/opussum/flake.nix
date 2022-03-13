{
  description = ''Wrapper around libopus'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."opussum-master".dir   = "master";
  inputs."opussum-master".owner = "nim-nix-pkgs";
  inputs."opussum-master".ref   = "master";
  inputs."opussum-master".repo  = "opussum";
  inputs."opussum-master".type  = "github";
  inputs."opussum-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_1_0".dir   = "0_1_0";
  inputs."opussum-0_1_0".owner = "nim-nix-pkgs";
  inputs."opussum-0_1_0".ref   = "master";
  inputs."opussum-0_1_0".repo  = "opussum";
  inputs."opussum-0_1_0".type  = "github";
  inputs."opussum-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_2_0".dir   = "0_2_0";
  inputs."opussum-0_2_0".owner = "nim-nix-pkgs";
  inputs."opussum-0_2_0".ref   = "master";
  inputs."opussum-0_2_0".repo  = "opussum";
  inputs."opussum-0_2_0".type  = "github";
  inputs."opussum-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_3_0".dir   = "0_3_0";
  inputs."opussum-0_3_0".owner = "nim-nix-pkgs";
  inputs."opussum-0_3_0".ref   = "master";
  inputs."opussum-0_3_0".repo  = "opussum";
  inputs."opussum-0_3_0".type  = "github";
  inputs."opussum-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_4_0".dir   = "0_4_0";
  inputs."opussum-0_4_0".owner = "nim-nix-pkgs";
  inputs."opussum-0_4_0".ref   = "master";
  inputs."opussum-0_4_0".repo  = "opussum";
  inputs."opussum-0_4_0".type  = "github";
  inputs."opussum-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_4_1".dir   = "0_4_1";
  inputs."opussum-0_4_1".owner = "nim-nix-pkgs";
  inputs."opussum-0_4_1".ref   = "master";
  inputs."opussum-0_4_1".repo  = "opussum";
  inputs."opussum-0_4_1".type  = "github";
  inputs."opussum-0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_4_2".dir   = "0_4_2";
  inputs."opussum-0_4_2".owner = "nim-nix-pkgs";
  inputs."opussum-0_4_2".ref   = "master";
  inputs."opussum-0_4_2".repo  = "opussum";
  inputs."opussum-0_4_2".type  = "github";
  inputs."opussum-0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_4_3".dir   = "0_4_3";
  inputs."opussum-0_4_3".owner = "nim-nix-pkgs";
  inputs."opussum-0_4_3".ref   = "master";
  inputs."opussum-0_4_3".repo  = "opussum";
  inputs."opussum-0_4_3".type  = "github";
  inputs."opussum-0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_5_0".dir   = "0_5_0";
  inputs."opussum-0_5_0".owner = "nim-nix-pkgs";
  inputs."opussum-0_5_0".ref   = "master";
  inputs."opussum-0_5_0".repo  = "opussum";
  inputs."opussum-0_5_0".type  = "github";
  inputs."opussum-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_5_1".dir   = "0_5_1";
  inputs."opussum-0_5_1".owner = "nim-nix-pkgs";
  inputs."opussum-0_5_1".ref   = "master";
  inputs."opussum-0_5_1".repo  = "opussum";
  inputs."opussum-0_5_1".type  = "github";
  inputs."opussum-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_6_0".dir   = "0_6_0";
  inputs."opussum-0_6_0".owner = "nim-nix-pkgs";
  inputs."opussum-0_6_0".ref   = "master";
  inputs."opussum-0_6_0".repo  = "opussum";
  inputs."opussum-0_6_0".type  = "github";
  inputs."opussum-0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opussum-0_6_1".dir   = "0_6_1";
  inputs."opussum-0_6_1".owner = "nim-nix-pkgs";
  inputs."opussum-0_6_1".ref   = "master";
  inputs."opussum-0_6_1".repo  = "opussum";
  inputs."opussum-0_6_1".type  = "github";
  inputs."opussum-0_6_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opussum-0_6_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
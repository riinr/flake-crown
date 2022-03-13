{
  description = ''A simple RPN calculator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ad-master".dir   = "master";
  inputs."ad-master".owner = "nim-nix-pkgs";
  inputs."ad-master".ref   = "master";
  inputs."ad-master".repo  = "ad";
  inputs."ad-master".type  = "github";
  inputs."ad-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_6_3".dir   = "0_6_3";
  inputs."ad-0_6_3".owner = "nim-nix-pkgs";
  inputs."ad-0_6_3".ref   = "master";
  inputs."ad-0_6_3".repo  = "ad";
  inputs."ad-0_6_3".type  = "github";
  inputs."ad-0_6_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_6_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_6_4".dir   = "0_6_4";
  inputs."ad-0_6_4".owner = "nim-nix-pkgs";
  inputs."ad-0_6_4".ref   = "master";
  inputs."ad-0_6_4".repo  = "ad";
  inputs."ad-0_6_4".type  = "github";
  inputs."ad-0_6_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_6_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_7".dir   = "0_7";
  inputs."ad-0_7".owner = "nim-nix-pkgs";
  inputs."ad-0_7".ref   = "master";
  inputs."ad-0_7".repo  = "ad";
  inputs."ad-0_7".type  = "github";
  inputs."ad-0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_7_1".dir   = "0_7_1";
  inputs."ad-0_7_1".owner = "nim-nix-pkgs";
  inputs."ad-0_7_1".ref   = "master";
  inputs."ad-0_7_1".repo  = "ad";
  inputs."ad-0_7_1".type  = "github";
  inputs."ad-0_7_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_7_2".dir   = "0_7_2";
  inputs."ad-0_7_2".owner = "nim-nix-pkgs";
  inputs."ad-0_7_2".ref   = "master";
  inputs."ad-0_7_2".repo  = "ad";
  inputs."ad-0_7_2".type  = "github";
  inputs."ad-0_7_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ad-0_7_4".dir   = "0_7_4";
  inputs."ad-0_7_4".owner = "nim-nix-pkgs";
  inputs."ad-0_7_4".ref   = "master";
  inputs."ad-0_7_4".repo  = "ad";
  inputs."ad-0_7_4".type  = "github";
  inputs."ad-0_7_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ad-0_7_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
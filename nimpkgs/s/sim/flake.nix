{
  description = ''Parse config by defining an object'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sim-master".dir   = "master";
  inputs."sim-master".owner = "nim-nix-pkgs";
  inputs."sim-master".ref   = "master";
  inputs."sim-master".repo  = "sim";
  inputs."sim-master".type  = "github";
  inputs."sim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_1".dir   = "0_1_1";
  inputs."sim-0_1_1".owner = "nim-nix-pkgs";
  inputs."sim-0_1_1".ref   = "master";
  inputs."sim-0_1_1".repo  = "sim";
  inputs."sim-0_1_1".type  = "github";
  inputs."sim-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_2".dir   = "0_1_2";
  inputs."sim-0_1_2".owner = "nim-nix-pkgs";
  inputs."sim-0_1_2".ref   = "master";
  inputs."sim-0_1_2".repo  = "sim";
  inputs."sim-0_1_2".type  = "github";
  inputs."sim-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_3".dir   = "0_1_3";
  inputs."sim-0_1_3".owner = "nim-nix-pkgs";
  inputs."sim-0_1_3".ref   = "master";
  inputs."sim-0_1_3".repo  = "sim";
  inputs."sim-0_1_3".type  = "github";
  inputs."sim-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_4".dir   = "0_1_4";
  inputs."sim-0_1_4".owner = "nim-nix-pkgs";
  inputs."sim-0_1_4".ref   = "master";
  inputs."sim-0_1_4".repo  = "sim";
  inputs."sim-0_1_4".type  = "github";
  inputs."sim-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_5".dir   = "0_1_5";
  inputs."sim-0_1_5".owner = "nim-nix-pkgs";
  inputs."sim-0_1_5".ref   = "master";
  inputs."sim-0_1_5".repo  = "sim";
  inputs."sim-0_1_5".type  = "github";
  inputs."sim-0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_6".dir   = "0_1_6";
  inputs."sim-0_1_6".owner = "nim-nix-pkgs";
  inputs."sim-0_1_6".ref   = "master";
  inputs."sim-0_1_6".repo  = "sim";
  inputs."sim-0_1_6".type  = "github";
  inputs."sim-0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sim-0_1_7".dir   = "0_1_7";
  inputs."sim-0_1_7".owner = "nim-nix-pkgs";
  inputs."sim-0_1_7".ref   = "master";
  inputs."sim-0_1_7".repo  = "sim";
  inputs."sim-0_1_7".type  = "github";
  inputs."sim-0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sim-0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
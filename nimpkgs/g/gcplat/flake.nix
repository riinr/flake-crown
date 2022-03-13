{
  description = ''Google Cloud Platform (GCP) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gcplat-master".dir   = "master";
  inputs."gcplat-master".owner = "nim-nix-pkgs";
  inputs."gcplat-master".ref   = "master";
  inputs."gcplat-master".repo  = "gcplat";
  inputs."gcplat-master".type  = "github";
  inputs."gcplat-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-0_0_1".dir   = "0_0_1";
  inputs."gcplat-0_0_1".owner = "nim-nix-pkgs";
  inputs."gcplat-0_0_1".ref   = "master";
  inputs."gcplat-0_0_1".repo  = "gcplat";
  inputs."gcplat-0_0_1".type  = "github";
  inputs."gcplat-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_0".dir   = "2_0_0";
  inputs."gcplat-2_0_0".owner = "nim-nix-pkgs";
  inputs."gcplat-2_0_0".ref   = "master";
  inputs."gcplat-2_0_0".repo  = "gcplat";
  inputs."gcplat-2_0_0".type  = "github";
  inputs."gcplat-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_1".dir   = "2_0_1";
  inputs."gcplat-2_0_1".owner = "nim-nix-pkgs";
  inputs."gcplat-2_0_1".ref   = "master";
  inputs."gcplat-2_0_1".repo  = "gcplat";
  inputs."gcplat-2_0_1".type  = "github";
  inputs."gcplat-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_2".dir   = "2_0_2";
  inputs."gcplat-2_0_2".owner = "nim-nix-pkgs";
  inputs."gcplat-2_0_2".ref   = "master";
  inputs."gcplat-2_0_2".repo  = "gcplat";
  inputs."gcplat-2_0_2".type  = "github";
  inputs."gcplat-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_3".dir   = "2_0_3";
  inputs."gcplat-2_0_3".owner = "nim-nix-pkgs";
  inputs."gcplat-2_0_3".ref   = "master";
  inputs."gcplat-2_0_3".repo  = "gcplat";
  inputs."gcplat-2_0_3".type  = "github";
  inputs."gcplat-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_4".dir   = "2_0_4";
  inputs."gcplat-2_0_4".owner = "nim-nix-pkgs";
  inputs."gcplat-2_0_4".ref   = "master";
  inputs."gcplat-2_0_4".repo  = "gcplat";
  inputs."gcplat-2_0_4".type  = "github";
  inputs."gcplat-2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-2_0_5".dir   = "2_0_5";
  inputs."gcplat-2_0_5".owner = "nim-nix-pkgs";
  inputs."gcplat-2_0_5".ref   = "master";
  inputs."gcplat-2_0_5".repo  = "gcplat";
  inputs."gcplat-2_0_5".type  = "github";
  inputs."gcplat-2_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-2_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-3_0_0".dir   = "3_0_0";
  inputs."gcplat-3_0_0".owner = "nim-nix-pkgs";
  inputs."gcplat-3_0_0".ref   = "master";
  inputs."gcplat-3_0_0".repo  = "gcplat";
  inputs."gcplat-3_0_0".type  = "github";
  inputs."gcplat-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gcplat-3_0_1".dir   = "3_0_1";
  inputs."gcplat-3_0_1".owner = "nim-nix-pkgs";
  inputs."gcplat-3_0_1".ref   = "master";
  inputs."gcplat-3_0_1".repo  = "gcplat";
  inputs."gcplat-3_0_1".type  = "github";
  inputs."gcplat-3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gcplat-3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
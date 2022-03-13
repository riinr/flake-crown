{
  description = ''7z extraction for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim7z-master".dir   = "master";
  inputs."nim7z-master".owner = "nim-nix-pkgs";
  inputs."nim7z-master".ref   = "master";
  inputs."nim7z-master".repo  = "nim7z";
  inputs."nim7z-master".type  = "github";
  inputs."nim7z-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim7z-v0_1_1".dir   = "v0_1_1";
  inputs."nim7z-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nim7z-v0_1_1".ref   = "master";
  inputs."nim7z-v0_1_1".repo  = "nim7z";
  inputs."nim7z-v0_1_1".type  = "github";
  inputs."nim7z-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim7z-v0_1_2".dir   = "v0_1_2";
  inputs."nim7z-v0_1_2".owner = "nim-nix-pkgs";
  inputs."nim7z-v0_1_2".ref   = "master";
  inputs."nim7z-v0_1_2".repo  = "nim7z";
  inputs."nim7z-v0_1_2".type  = "github";
  inputs."nim7z-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim7z-v0_1_3".dir   = "v0_1_3";
  inputs."nim7z-v0_1_3".owner = "nim-nix-pkgs";
  inputs."nim7z-v0_1_3".ref   = "master";
  inputs."nim7z-v0_1_3".repo  = "nim7z";
  inputs."nim7z-v0_1_3".type  = "github";
  inputs."nim7z-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim7z-v0_1_4".dir   = "v0_1_4";
  inputs."nim7z-v0_1_4".owner = "nim-nix-pkgs";
  inputs."nim7z-v0_1_4".ref   = "master";
  inputs."nim7z-v0_1_4".repo  = "nim7z";
  inputs."nim7z-v0_1_4".type  = "github";
  inputs."nim7z-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim7z-v0_1_5".dir   = "v0_1_5";
  inputs."nim7z-v0_1_5".owner = "nim-nix-pkgs";
  inputs."nim7z-v0_1_5".ref   = "master";
  inputs."nim7z-v0_1_5".repo  = "nim7z";
  inputs."nim7z-v0_1_5".type  = "github";
  inputs."nim7z-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
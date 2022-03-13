{
  description = ''Least recently used (LRU) cache'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lrucache-master".dir   = "master";
  inputs."lrucache-master".owner = "nim-nix-pkgs";
  inputs."lrucache-master".ref   = "master";
  inputs."lrucache-master".repo  = "lrucache";
  inputs."lrucache-master".type  = "github";
  inputs."lrucache-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_0_0".dir   = "1_0_0";
  inputs."lrucache-1_0_0".owner = "nim-nix-pkgs";
  inputs."lrucache-1_0_0".ref   = "master";
  inputs."lrucache-1_0_0".repo  = "lrucache";
  inputs."lrucache-1_0_0".type  = "github";
  inputs."lrucache-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_0_1".dir   = "1_0_1";
  inputs."lrucache-1_0_1".owner = "nim-nix-pkgs";
  inputs."lrucache-1_0_1".ref   = "master";
  inputs."lrucache-1_0_1".repo  = "lrucache";
  inputs."lrucache-1_0_1".type  = "github";
  inputs."lrucache-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_0_2".dir   = "1_0_2";
  inputs."lrucache-1_0_2".owner = "nim-nix-pkgs";
  inputs."lrucache-1_0_2".ref   = "master";
  inputs."lrucache-1_0_2".repo  = "lrucache";
  inputs."lrucache-1_0_2".type  = "github";
  inputs."lrucache-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_0_3".dir   = "1_0_3";
  inputs."lrucache-1_0_3".owner = "nim-nix-pkgs";
  inputs."lrucache-1_0_3".ref   = "master";
  inputs."lrucache-1_0_3".repo  = "lrucache";
  inputs."lrucache-1_0_3".type  = "github";
  inputs."lrucache-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_0_4".dir   = "1_0_4";
  inputs."lrucache-1_0_4".owner = "nim-nix-pkgs";
  inputs."lrucache-1_0_4".ref   = "master";
  inputs."lrucache-1_0_4".repo  = "lrucache";
  inputs."lrucache-1_0_4".type  = "github";
  inputs."lrucache-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_1_0".dir   = "1_1_0";
  inputs."lrucache-1_1_0".owner = "nim-nix-pkgs";
  inputs."lrucache-1_1_0".ref   = "master";
  inputs."lrucache-1_1_0".repo  = "lrucache";
  inputs."lrucache-1_1_0".type  = "github";
  inputs."lrucache-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_1_1".dir   = "1_1_1";
  inputs."lrucache-1_1_1".owner = "nim-nix-pkgs";
  inputs."lrucache-1_1_1".ref   = "master";
  inputs."lrucache-1_1_1".repo  = "lrucache";
  inputs."lrucache-1_1_1".type  = "github";
  inputs."lrucache-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_1_2".dir   = "1_1_2";
  inputs."lrucache-1_1_2".owner = "nim-nix-pkgs";
  inputs."lrucache-1_1_2".ref   = "master";
  inputs."lrucache-1_1_2".repo  = "lrucache";
  inputs."lrucache-1_1_2".type  = "github";
  inputs."lrucache-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_1_3".dir   = "1_1_3";
  inputs."lrucache-1_1_3".owner = "nim-nix-pkgs";
  inputs."lrucache-1_1_3".ref   = "master";
  inputs."lrucache-1_1_3".repo  = "lrucache";
  inputs."lrucache-1_1_3".type  = "github";
  inputs."lrucache-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_1_4".dir   = "1_1_4";
  inputs."lrucache-1_1_4".owner = "nim-nix-pkgs";
  inputs."lrucache-1_1_4".ref   = "master";
  inputs."lrucache-1_1_4".repo  = "lrucache";
  inputs."lrucache-1_1_4".type  = "github";
  inputs."lrucache-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
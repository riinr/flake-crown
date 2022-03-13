{
  description = ''Simplify Nim Inter-Thread Communication'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."threadproxy-master".dir   = "master";
  inputs."threadproxy-master".owner = "nim-nix-pkgs";
  inputs."threadproxy-master".ref   = "master";
  inputs."threadproxy-master".repo  = "threadproxy";
  inputs."threadproxy-master".type  = "github";
  inputs."threadproxy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadproxy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."threadproxy-0_0_1".dir   = "0_0_1";
  inputs."threadproxy-0_0_1".owner = "nim-nix-pkgs";
  inputs."threadproxy-0_0_1".ref   = "master";
  inputs."threadproxy-0_0_1".repo  = "threadproxy";
  inputs."threadproxy-0_0_1".type  = "github";
  inputs."threadproxy-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadproxy-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."threadproxy-0_0_2".dir   = "0_0_2";
  inputs."threadproxy-0_0_2".owner = "nim-nix-pkgs";
  inputs."threadproxy-0_0_2".ref   = "master";
  inputs."threadproxy-0_0_2".repo  = "threadproxy";
  inputs."threadproxy-0_0_2".type  = "github";
  inputs."threadproxy-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadproxy-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."threadproxy-0_1_0".dir   = "0_1_0";
  inputs."threadproxy-0_1_0".owner = "nim-nix-pkgs";
  inputs."threadproxy-0_1_0".ref   = "master";
  inputs."threadproxy-0_1_0".repo  = "threadproxy";
  inputs."threadproxy-0_1_0".type  = "github";
  inputs."threadproxy-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadproxy-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."threadproxy-0_1_1".dir   = "0_1_1";
  inputs."threadproxy-0_1_1".owner = "nim-nix-pkgs";
  inputs."threadproxy-0_1_1".ref   = "master";
  inputs."threadproxy-0_1_1".repo  = "threadproxy";
  inputs."threadproxy-0_1_1".type  = "github";
  inputs."threadproxy-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadproxy-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."threadproxy-0_1_2".dir   = "0_1_2";
  inputs."threadproxy-0_1_2".owner = "nim-nix-pkgs";
  inputs."threadproxy-0_1_2".ref   = "master";
  inputs."threadproxy-0_1_2".repo  = "threadproxy";
  inputs."threadproxy-0_1_2".type  = "github";
  inputs."threadproxy-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadproxy-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."threadproxy-0_1_3".dir   = "0_1_3";
  inputs."threadproxy-0_1_3".owner = "nim-nix-pkgs";
  inputs."threadproxy-0_1_3".ref   = "master";
  inputs."threadproxy-0_1_3".repo  = "threadproxy";
  inputs."threadproxy-0_1_3".type  = "github";
  inputs."threadproxy-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadproxy-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."threadproxy-0_2_0".dir   = "0_2_0";
  inputs."threadproxy-0_2_0".owner = "nim-nix-pkgs";
  inputs."threadproxy-0_2_0".ref   = "master";
  inputs."threadproxy-0_2_0".repo  = "threadproxy";
  inputs."threadproxy-0_2_0".type  = "github";
  inputs."threadproxy-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadproxy-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."threadproxy-0_2_1".dir   = "0_2_1";
  inputs."threadproxy-0_2_1".owner = "nim-nix-pkgs";
  inputs."threadproxy-0_2_1".ref   = "master";
  inputs."threadproxy-0_2_1".repo  = "threadproxy";
  inputs."threadproxy-0_2_1".type  = "github";
  inputs."threadproxy-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadproxy-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."threadproxy-0_2_2".dir   = "0_2_2";
  inputs."threadproxy-0_2_2".owner = "nim-nix-pkgs";
  inputs."threadproxy-0_2_2".ref   = "master";
  inputs."threadproxy-0_2_2".repo  = "threadproxy";
  inputs."threadproxy-0_2_2".type  = "github";
  inputs."threadproxy-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadproxy-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''github api'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."github-devel".dir   = "devel";
  inputs."github-devel".owner = "nim-nix-pkgs";
  inputs."github-devel".ref   = "master";
  inputs."github-devel".repo  = "github";
  inputs."github-devel".type  = "github";
  inputs."github-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-master".dir   = "master";
  inputs."github-master".owner = "nim-nix-pkgs";
  inputs."github-master".ref   = "master";
  inputs."github-master".repo  = "github";
  inputs."github-master".type  = "github";
  inputs."github-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-1_0_0".dir   = "1_0_0";
  inputs."github-1_0_0".owner = "nim-nix-pkgs";
  inputs."github-1_0_0".ref   = "master";
  inputs."github-1_0_0".repo  = "github";
  inputs."github-1_0_0".type  = "github";
  inputs."github-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-1_0_1".dir   = "1_0_1";
  inputs."github-1_0_1".owner = "nim-nix-pkgs";
  inputs."github-1_0_1".ref   = "master";
  inputs."github-1_0_1".repo  = "github";
  inputs."github-1_0_1".type  = "github";
  inputs."github-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-1_0_2".dir   = "1_0_2";
  inputs."github-1_0_2".owner = "nim-nix-pkgs";
  inputs."github-1_0_2".ref   = "master";
  inputs."github-1_0_2".repo  = "github";
  inputs."github-1_0_2".type  = "github";
  inputs."github-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-1_0_3".dir   = "1_0_3";
  inputs."github-1_0_3".owner = "nim-nix-pkgs";
  inputs."github-1_0_3".ref   = "master";
  inputs."github-1_0_3".repo  = "github";
  inputs."github-1_0_3".type  = "github";
  inputs."github-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-1_0_4".dir   = "1_0_4";
  inputs."github-1_0_4".owner = "nim-nix-pkgs";
  inputs."github-1_0_4".ref   = "master";
  inputs."github-1_0_4".repo  = "github";
  inputs."github-1_0_4".type  = "github";
  inputs."github-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-2_0_0".dir   = "2_0_0";
  inputs."github-2_0_0".owner = "nim-nix-pkgs";
  inputs."github-2_0_0".ref   = "master";
  inputs."github-2_0_0".repo  = "github";
  inputs."github-2_0_0".type  = "github";
  inputs."github-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-2_0_1".dir   = "2_0_1";
  inputs."github-2_0_1".owner = "nim-nix-pkgs";
  inputs."github-2_0_1".ref   = "master";
  inputs."github-2_0_1".repo  = "github";
  inputs."github-2_0_1".type  = "github";
  inputs."github-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-2_0_2".dir   = "2_0_2";
  inputs."github-2_0_2".owner = "nim-nix-pkgs";
  inputs."github-2_0_2".ref   = "master";
  inputs."github-2_0_2".repo  = "github";
  inputs."github-2_0_2".type  = "github";
  inputs."github-2_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-2_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-2_0_3".dir   = "2_0_3";
  inputs."github-2_0_3".owner = "nim-nix-pkgs";
  inputs."github-2_0_3".ref   = "master";
  inputs."github-2_0_3".repo  = "github";
  inputs."github-2_0_3".type  = "github";
  inputs."github-2_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-2_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-2_0_4".dir   = "2_0_4";
  inputs."github-2_0_4".owner = "nim-nix-pkgs";
  inputs."github-2_0_4".ref   = "master";
  inputs."github-2_0_4".repo  = "github";
  inputs."github-2_0_4".type  = "github";
  inputs."github-2_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-2_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
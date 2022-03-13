{
  description = ''implements the cucumber BDD framework in the nim language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."cucumber-master".dir   = "master";
  inputs."cucumber-master".owner = "nim-nix-pkgs";
  inputs."cucumber-master".ref   = "master";
  inputs."cucumber-master".repo  = "cucumber";
  inputs."cucumber-master".type  = "github";
  inputs."cucumber-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_10".dir   = "v0_0_10";
  inputs."cucumber-v0_0_10".owner = "nim-nix-pkgs";
  inputs."cucumber-v0_0_10".ref   = "master";
  inputs."cucumber-v0_0_10".repo  = "cucumber";
  inputs."cucumber-v0_0_10".type  = "github";
  inputs."cucumber-v0_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_11".dir   = "v0_0_11";
  inputs."cucumber-v0_0_11".owner = "nim-nix-pkgs";
  inputs."cucumber-v0_0_11".ref   = "master";
  inputs."cucumber-v0_0_11".repo  = "cucumber";
  inputs."cucumber-v0_0_11".type  = "github";
  inputs."cucumber-v0_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_2".dir   = "v0_0_2";
  inputs."cucumber-v0_0_2".owner = "nim-nix-pkgs";
  inputs."cucumber-v0_0_2".ref   = "master";
  inputs."cucumber-v0_0_2".repo  = "cucumber";
  inputs."cucumber-v0_0_2".type  = "github";
  inputs."cucumber-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_3".dir   = "v0_0_3";
  inputs."cucumber-v0_0_3".owner = "nim-nix-pkgs";
  inputs."cucumber-v0_0_3".ref   = "master";
  inputs."cucumber-v0_0_3".repo  = "cucumber";
  inputs."cucumber-v0_0_3".type  = "github";
  inputs."cucumber-v0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_4".dir   = "v0_0_4";
  inputs."cucumber-v0_0_4".owner = "nim-nix-pkgs";
  inputs."cucumber-v0_0_4".ref   = "master";
  inputs."cucumber-v0_0_4".repo  = "cucumber";
  inputs."cucumber-v0_0_4".type  = "github";
  inputs."cucumber-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_6".dir   = "v0_0_6";
  inputs."cucumber-v0_0_6".owner = "nim-nix-pkgs";
  inputs."cucumber-v0_0_6".ref   = "master";
  inputs."cucumber-v0_0_6".repo  = "cucumber";
  inputs."cucumber-v0_0_6".type  = "github";
  inputs."cucumber-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_7".dir   = "v0_0_7";
  inputs."cucumber-v0_0_7".owner = "nim-nix-pkgs";
  inputs."cucumber-v0_0_7".ref   = "master";
  inputs."cucumber-v0_0_7".repo  = "cucumber";
  inputs."cucumber-v0_0_7".type  = "github";
  inputs."cucumber-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_8".dir   = "v0_0_8";
  inputs."cucumber-v0_0_8".owner = "nim-nix-pkgs";
  inputs."cucumber-v0_0_8".ref   = "master";
  inputs."cucumber-v0_0_8".repo  = "cucumber";
  inputs."cucumber-v0_0_8".type  = "github";
  inputs."cucumber-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cucumber-v0_0_9".dir   = "v0_0_9";
  inputs."cucumber-v0_0_9".owner = "nim-nix-pkgs";
  inputs."cucumber-v0_0_9".ref   = "master";
  inputs."cucumber-v0_0_9".repo  = "cucumber";
  inputs."cucumber-v0_0_9".type  = "github";
  inputs."cucumber-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cucumber-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
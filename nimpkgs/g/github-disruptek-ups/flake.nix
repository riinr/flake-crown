{
  description = ''a package handler'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ups-master".dir   = "master";
  inputs."ups-master".owner = "nim-nix-pkgs";
  inputs."ups-master".ref   = "master";
  inputs."ups-master".repo  = "ups";
  inputs."ups-master".type  = "github";
  inputs."ups-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ups-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ups-0_0_2".dir   = "0_0_2";
  inputs."ups-0_0_2".owner = "nim-nix-pkgs";
  inputs."ups-0_0_2".ref   = "master";
  inputs."ups-0_0_2".repo  = "ups";
  inputs."ups-0_0_2".type  = "github";
  inputs."ups-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ups-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ups-0_0_3".dir   = "0_0_3";
  inputs."ups-0_0_3".owner = "nim-nix-pkgs";
  inputs."ups-0_0_3".ref   = "master";
  inputs."ups-0_0_3".repo  = "ups";
  inputs."ups-0_0_3".type  = "github";
  inputs."ups-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ups-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ups-0_0_4".dir   = "0_0_4";
  inputs."ups-0_0_4".owner = "nim-nix-pkgs";
  inputs."ups-0_0_4".ref   = "master";
  inputs."ups-0_0_4".repo  = "ups";
  inputs."ups-0_0_4".type  = "github";
  inputs."ups-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ups-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ups-0_0_5".dir   = "0_0_5";
  inputs."ups-0_0_5".owner = "nim-nix-pkgs";
  inputs."ups-0_0_5".ref   = "master";
  inputs."ups-0_0_5".repo  = "ups";
  inputs."ups-0_0_5".type  = "github";
  inputs."ups-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ups-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ups-0_0_6".dir   = "0_0_6";
  inputs."ups-0_0_6".owner = "nim-nix-pkgs";
  inputs."ups-0_0_6".ref   = "master";
  inputs."ups-0_0_6".repo  = "ups";
  inputs."ups-0_0_6".type  = "github";
  inputs."ups-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ups-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ups-0_0_7".dir   = "0_0_7";
  inputs."ups-0_0_7".owner = "nim-nix-pkgs";
  inputs."ups-0_0_7".ref   = "master";
  inputs."ups-0_0_7".repo  = "ups";
  inputs."ups-0_0_7".type  = "github";
  inputs."ups-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ups-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
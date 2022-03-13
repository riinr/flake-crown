{
  description = ''nim package manager'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."slim-v0_1_1".dir   = "v0_1_1";
  inputs."slim-v0_1_1".owner = "nim-nix-pkgs";
  inputs."slim-v0_1_1".ref   = "master";
  inputs."slim-v0_1_1".repo  = "slim";
  inputs."slim-v0_1_1".type  = "github";
  inputs."slim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_2".dir   = "v0_1_2";
  inputs."slim-v0_1_2".owner = "nim-nix-pkgs";
  inputs."slim-v0_1_2".ref   = "master";
  inputs."slim-v0_1_2".repo  = "slim";
  inputs."slim-v0_1_2".type  = "github";
  inputs."slim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_3".dir   = "v0_1_3";
  inputs."slim-v0_1_3".owner = "nim-nix-pkgs";
  inputs."slim-v0_1_3".ref   = "master";
  inputs."slim-v0_1_3".repo  = "slim";
  inputs."slim-v0_1_3".type  = "github";
  inputs."slim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_5".dir   = "v0_1_5";
  inputs."slim-v0_1_5".owner = "nim-nix-pkgs";
  inputs."slim-v0_1_5".ref   = "master";
  inputs."slim-v0_1_5".repo  = "slim";
  inputs."slim-v0_1_5".type  = "github";
  inputs."slim-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_6".dir   = "v0_1_6";
  inputs."slim-v0_1_6".owner = "nim-nix-pkgs";
  inputs."slim-v0_1_6".ref   = "master";
  inputs."slim-v0_1_6".repo  = "slim";
  inputs."slim-v0_1_6".type  = "github";
  inputs."slim-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_7".dir   = "v0_1_7";
  inputs."slim-v0_1_7".owner = "nim-nix-pkgs";
  inputs."slim-v0_1_7".ref   = "master";
  inputs."slim-v0_1_7".repo  = "slim";
  inputs."slim-v0_1_7".type  = "github";
  inputs."slim-v0_1_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_8".dir   = "v0_1_8";
  inputs."slim-v0_1_8".owner = "nim-nix-pkgs";
  inputs."slim-v0_1_8".ref   = "master";
  inputs."slim-v0_1_8".repo  = "slim";
  inputs."slim-v0_1_8".type  = "github";
  inputs."slim-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slim-v0_1_9".dir   = "v0_1_9";
  inputs."slim-v0_1_9".owner = "nim-nix-pkgs";
  inputs."slim-v0_1_9".ref   = "master";
  inputs."slim-v0_1_9".repo  = "slim";
  inputs."slim-v0_1_9".type  = "github";
  inputs."slim-v0_1_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slim-v0_1_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
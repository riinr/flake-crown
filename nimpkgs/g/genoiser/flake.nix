{
  description = ''functions to tracks for genomics data files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."genoiser-master".dir   = "master";
  inputs."genoiser-master".owner = "nim-nix-pkgs";
  inputs."genoiser-master".ref   = "master";
  inputs."genoiser-master".repo  = "genoiser";
  inputs."genoiser-master".type  = "github";
  inputs."genoiser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genoiser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genoiser-v0_2_4".dir   = "v0_2_4";
  inputs."genoiser-v0_2_4".owner = "nim-nix-pkgs";
  inputs."genoiser-v0_2_4".ref   = "master";
  inputs."genoiser-v0_2_4".repo  = "genoiser";
  inputs."genoiser-v0_2_4".type  = "github";
  inputs."genoiser-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genoiser-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genoiser-v0_2_5".dir   = "v0_2_5";
  inputs."genoiser-v0_2_5".owner = "nim-nix-pkgs";
  inputs."genoiser-v0_2_5".ref   = "master";
  inputs."genoiser-v0_2_5".repo  = "genoiser";
  inputs."genoiser-v0_2_5".type  = "github";
  inputs."genoiser-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genoiser-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genoiser-v0_2_6".dir   = "v0_2_6";
  inputs."genoiser-v0_2_6".owner = "nim-nix-pkgs";
  inputs."genoiser-v0_2_6".ref   = "master";
  inputs."genoiser-v0_2_6".repo  = "genoiser";
  inputs."genoiser-v0_2_6".type  = "github";
  inputs."genoiser-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genoiser-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genoiser-v0_2_7".dir   = "v0_2_7";
  inputs."genoiser-v0_2_7".owner = "nim-nix-pkgs";
  inputs."genoiser-v0_2_7".ref   = "master";
  inputs."genoiser-v0_2_7".repo  = "genoiser";
  inputs."genoiser-v0_2_7".type  = "github";
  inputs."genoiser-v0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genoiser-v0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Convert strings to a slug. Can be used for URLs, file names, IDs etc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."slugify-main".dir   = "main";
  inputs."slugify-main".owner = "nim-nix-pkgs";
  inputs."slugify-main".ref   = "master";
  inputs."slugify-main".repo  = "slugify";
  inputs."slugify-main".type  = "github";
  inputs."slugify-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slugify-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slugify-v0_1_0".dir   = "v0_1_0";
  inputs."slugify-v0_1_0".owner = "nim-nix-pkgs";
  inputs."slugify-v0_1_0".ref   = "master";
  inputs."slugify-v0_1_0".repo  = "slugify";
  inputs."slugify-v0_1_0".type  = "github";
  inputs."slugify-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slugify-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."slugify-v0_2_0".dir   = "v0_2_0";
  inputs."slugify-v0_2_0".owner = "nim-nix-pkgs";
  inputs."slugify-v0_2_0".ref   = "master";
  inputs."slugify-v0_2_0".repo  = "slugify";
  inputs."slugify-v0_2_0".type  = "github";
  inputs."slugify-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."slugify-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
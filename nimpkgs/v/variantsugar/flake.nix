{
  description = ''utility macros mostly for object variants'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."variantsugar-master".dir   = "master";
  inputs."variantsugar-master".owner = "nim-nix-pkgs";
  inputs."variantsugar-master".ref   = "master";
  inputs."variantsugar-master".repo  = "variantsugar";
  inputs."variantsugar-master".type  = "github";
  inputs."variantsugar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variantsugar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."variantsugar-v0_1_0".dir   = "v0_1_0";
  inputs."variantsugar-v0_1_0".owner = "nim-nix-pkgs";
  inputs."variantsugar-v0_1_0".ref   = "master";
  inputs."variantsugar-v0_1_0".repo  = "variantsugar";
  inputs."variantsugar-v0_1_0".type  = "github";
  inputs."variantsugar-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variantsugar-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
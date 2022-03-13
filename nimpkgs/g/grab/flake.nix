{
  description = ''grab statement for importing Nimble packages, similar to Groovy's Grape'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."grab-master".dir   = "master";
  inputs."grab-master".owner = "nim-nix-pkgs";
  inputs."grab-master".ref   = "master";
  inputs."grab-master".repo  = "grab";
  inputs."grab-master".type  = "github";
  inputs."grab-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grab-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."grab-v0_1_0".dir   = "v0_1_0";
  inputs."grab-v0_1_0".owner = "nim-nix-pkgs";
  inputs."grab-v0_1_0".ref   = "master";
  inputs."grab-v0_1_0".repo  = "grab";
  inputs."grab-v0_1_0".type  = "github";
  inputs."grab-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."grab-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
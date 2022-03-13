{
  description = ''Unsplash API Client for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unsplash-master".dir   = "master";
  inputs."unsplash-master".owner = "nim-nix-pkgs";
  inputs."unsplash-master".ref   = "master";
  inputs."unsplash-master".repo  = "unsplash";
  inputs."unsplash-master".type  = "github";
  inputs."unsplash-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unsplash-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."unsplash-0_1_0".dir   = "0_1_0";
  inputs."unsplash-0_1_0".owner = "nim-nix-pkgs";
  inputs."unsplash-0_1_0".ref   = "master";
  inputs."unsplash-0_1_0".repo  = "unsplash";
  inputs."unsplash-0_1_0".type  = "github";
  inputs."unsplash-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unsplash-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
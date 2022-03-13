{
  description = ''libipset wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libipset-master".dir   = "master";
  inputs."libipset-master".owner = "nim-nix-pkgs";
  inputs."libipset-master".ref   = "master";
  inputs."libipset-master".repo  = "libipset";
  inputs."libipset-master".type  = "github";
  inputs."libipset-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libipset-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libipset-0_0_1".dir   = "0_0_1";
  inputs."libipset-0_0_1".owner = "nim-nix-pkgs";
  inputs."libipset-0_0_1".ref   = "master";
  inputs."libipset-0_0_1".repo  = "libipset";
  inputs."libipset-0_0_1".type  = "github";
  inputs."libipset-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libipset-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libipset-0_0_2".dir   = "0_0_2";
  inputs."libipset-0_0_2".owner = "nim-nix-pkgs";
  inputs."libipset-0_0_2".ref   = "master";
  inputs."libipset-0_0_2".repo  = "libipset";
  inputs."libipset-0_0_2".type  = "github";
  inputs."libipset-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libipset-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
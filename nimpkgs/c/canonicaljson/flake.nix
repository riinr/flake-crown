{
  description = ''Canonical JSON according to RFC8785'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."canonicaljson-master".dir   = "master";
  inputs."canonicaljson-master".owner = "nim-nix-pkgs";
  inputs."canonicaljson-master".ref   = "master";
  inputs."canonicaljson-master".repo  = "canonicaljson";
  inputs."canonicaljson-master".type  = "github";
  inputs."canonicaljson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_0_0".dir   = "1_0_0";
  inputs."canonicaljson-1_0_0".owner = "nim-nix-pkgs";
  inputs."canonicaljson-1_0_0".ref   = "master";
  inputs."canonicaljson-1_0_0".repo  = "canonicaljson";
  inputs."canonicaljson-1_0_0".type  = "github";
  inputs."canonicaljson-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_0_1".dir   = "1_0_1";
  inputs."canonicaljson-1_0_1".owner = "nim-nix-pkgs";
  inputs."canonicaljson-1_0_1".ref   = "master";
  inputs."canonicaljson-1_0_1".repo  = "canonicaljson";
  inputs."canonicaljson-1_0_1".type  = "github";
  inputs."canonicaljson-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_0_2".dir   = "1_0_2";
  inputs."canonicaljson-1_0_2".owner = "nim-nix-pkgs";
  inputs."canonicaljson-1_0_2".ref   = "master";
  inputs."canonicaljson-1_0_2".repo  = "canonicaljson";
  inputs."canonicaljson-1_0_2".type  = "github";
  inputs."canonicaljson-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_1_0".dir   = "1_1_0";
  inputs."canonicaljson-1_1_0".owner = "nim-nix-pkgs";
  inputs."canonicaljson-1_1_0".ref   = "master";
  inputs."canonicaljson-1_1_0".repo  = "canonicaljson";
  inputs."canonicaljson-1_1_0".type  = "github";
  inputs."canonicaljson-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_1_1".dir   = "1_1_1";
  inputs."canonicaljson-1_1_1".owner = "nim-nix-pkgs";
  inputs."canonicaljson-1_1_1".ref   = "master";
  inputs."canonicaljson-1_1_1".repo  = "canonicaljson";
  inputs."canonicaljson-1_1_1".type  = "github";
  inputs."canonicaljson-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."canonicaljson-1_1_2".dir   = "1_1_2";
  inputs."canonicaljson-1_1_2".owner = "nim-nix-pkgs";
  inputs."canonicaljson-1_1_2".ref   = "master";
  inputs."canonicaljson-1_1_2".repo  = "canonicaljson";
  inputs."canonicaljson-1_1_2".type  = "github";
  inputs."canonicaljson-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."canonicaljson-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
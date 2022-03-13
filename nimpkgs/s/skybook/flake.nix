{
  description = ''Light weight bookmark manager(delicious alternative)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."skybook-master".dir   = "master";
  inputs."skybook-master".owner = "nim-nix-pkgs";
  inputs."skybook-master".ref   = "master";
  inputs."skybook-master".repo  = "skybook";
  inputs."skybook-master".type  = "github";
  inputs."skybook-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."skybook-1_0".dir   = "1_0";
  inputs."skybook-1_0".owner = "nim-nix-pkgs";
  inputs."skybook-1_0".ref   = "master";
  inputs."skybook-1_0".repo  = "skybook";
  inputs."skybook-1_0".type  = "github";
  inputs."skybook-1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."skybook-1_0_1".dir   = "1_0_1";
  inputs."skybook-1_0_1".owner = "nim-nix-pkgs";
  inputs."skybook-1_0_1".ref   = "master";
  inputs."skybook-1_0_1".repo  = "skybook";
  inputs."skybook-1_0_1".type  = "github";
  inputs."skybook-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."skybook-1_0_2".dir   = "1_0_2";
  inputs."skybook-1_0_2".owner = "nim-nix-pkgs";
  inputs."skybook-1_0_2".ref   = "master";
  inputs."skybook-1_0_2".repo  = "skybook";
  inputs."skybook-1_0_2".type  = "github";
  inputs."skybook-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."skybook-1_0_3".dir   = "1_0_3";
  inputs."skybook-1_0_3".owner = "nim-nix-pkgs";
  inputs."skybook-1_0_3".ref   = "master";
  inputs."skybook-1_0_3".repo  = "skybook";
  inputs."skybook-1_0_3".type  = "github";
  inputs."skybook-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."skybook-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
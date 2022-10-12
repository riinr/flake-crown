{
  description = ''Nim wrapper for the osdialog library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."osdialog-master".dir   = "master";
  inputs."osdialog-master".owner = "nim-nix-pkgs";
  inputs."osdialog-master".ref   = "master";
  inputs."osdialog-master".repo  = "osdialog";
  inputs."osdialog-master".type  = "github";
  inputs."osdialog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osdialog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osdialog-v0_1_0".dir   = "v0_1_0";
  inputs."osdialog-v0_1_0".owner = "nim-nix-pkgs";
  inputs."osdialog-v0_1_0".ref   = "master";
  inputs."osdialog-v0_1_0".repo  = "osdialog";
  inputs."osdialog-v0_1_0".type  = "github";
  inputs."osdialog-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osdialog-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osdialog-v0_1_1".dir   = "v0_1_1";
  inputs."osdialog-v0_1_1".owner = "nim-nix-pkgs";
  inputs."osdialog-v0_1_1".ref   = "master";
  inputs."osdialog-v0_1_1".repo  = "osdialog";
  inputs."osdialog-v0_1_1".type  = "github";
  inputs."osdialog-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osdialog-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osdialog-v0_1_2".dir   = "v0_1_2";
  inputs."osdialog-v0_1_2".owner = "nim-nix-pkgs";
  inputs."osdialog-v0_1_2".ref   = "master";
  inputs."osdialog-v0_1_2".repo  = "osdialog";
  inputs."osdialog-v0_1_2".type  = "github";
  inputs."osdialog-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osdialog-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
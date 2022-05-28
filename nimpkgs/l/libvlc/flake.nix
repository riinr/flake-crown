{
  description = ''libvlc bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libvlc-master".dir   = "master";
  inputs."libvlc-master".owner = "nim-nix-pkgs";
  inputs."libvlc-master".ref   = "master";
  inputs."libvlc-master".repo  = "libvlc";
  inputs."libvlc-master".type  = "github";
  inputs."libvlc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libvlc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libvlc-0_1".dir   = "0_1";
  inputs."libvlc-0_1".owner = "nim-nix-pkgs";
  inputs."libvlc-0_1".ref   = "master";
  inputs."libvlc-0_1".repo  = "libvlc";
  inputs."libvlc-0_1".type  = "github";
  inputs."libvlc-0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libvlc-0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libvlc-0_2".dir   = "0_2";
  inputs."libvlc-0_2".owner = "nim-nix-pkgs";
  inputs."libvlc-0_2".ref   = "master";
  inputs."libvlc-0_2".repo  = "libvlc";
  inputs."libvlc-0_2".type  = "github";
  inputs."libvlc-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libvlc-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
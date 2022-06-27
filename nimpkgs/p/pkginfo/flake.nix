{
  description = ''A tiny utility package to extract Nimble information from any project'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pkginfo-main".dir   = "main";
  inputs."pkginfo-main".owner = "nim-nix-pkgs";
  inputs."pkginfo-main".ref   = "master";
  inputs."pkginfo-main".repo  = "pkginfo";
  inputs."pkginfo-main".type  = "github";
  inputs."pkginfo-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pkginfo-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pkginfo-v0_1_0".dir   = "v0_1_0";
  inputs."pkginfo-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pkginfo-v0_1_0".ref   = "master";
  inputs."pkginfo-v0_1_0".repo  = "pkginfo";
  inputs."pkginfo-v0_1_0".type  = "github";
  inputs."pkginfo-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pkginfo-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
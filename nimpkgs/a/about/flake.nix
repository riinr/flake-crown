{
  description = ''Executable for finding information about programs in PATH'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."about-master".dir   = "master";
  inputs."about-master".owner = "nim-nix-pkgs";
  inputs."about-master".ref   = "master";
  inputs."about-master".repo  = "about";
  inputs."about-master".type  = "github";
  inputs."about-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."about-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."about-v0_1_0".dir   = "v0_1_0";
  inputs."about-v0_1_0".owner = "nim-nix-pkgs";
  inputs."about-v0_1_0".ref   = "master";
  inputs."about-v0_1_0".repo  = "about";
  inputs."about-v0_1_0".type  = "github";
  inputs."about-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."about-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."about-v0_1_1".dir   = "v0_1_1";
  inputs."about-v0_1_1".owner = "nim-nix-pkgs";
  inputs."about-v0_1_1".ref   = "master";
  inputs."about-v0_1_1".repo  = "about";
  inputs."about-v0_1_1".type  = "github";
  inputs."about-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."about-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
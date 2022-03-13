{
  description = ''zbar wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimzbar-master".dir   = "master";
  inputs."nimzbar-master".owner = "nim-nix-pkgs";
  inputs."nimzbar-master".ref   = "master";
  inputs."nimzbar-master".repo  = "nimzbar";
  inputs."nimzbar-master".type  = "github";
  inputs."nimzbar-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimzbar-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimzbar-v0_1_0".dir   = "v0_1_0";
  inputs."nimzbar-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimzbar-v0_1_0".ref   = "master";
  inputs."nimzbar-v0_1_0".repo  = "nimzbar";
  inputs."nimzbar-v0_1_0".type  = "github";
  inputs."nimzbar-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimzbar-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimzbar-v0_1_1".dir   = "v0_1_1";
  inputs."nimzbar-v0_1_1".owner = "nim-nix-pkgs";
  inputs."nimzbar-v0_1_1".ref   = "master";
  inputs."nimzbar-v0_1_1".repo  = "nimzbar";
  inputs."nimzbar-v0_1_1".type  = "github";
  inputs."nimzbar-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimzbar-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Sitmo parallel random number generator in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sitmo-master".dir   = "master";
  inputs."sitmo-master".owner = "nim-nix-pkgs";
  inputs."sitmo-master".ref   = "master";
  inputs."sitmo-master".repo  = "sitmo";
  inputs."sitmo-master".type  = "github";
  inputs."sitmo-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sitmo-v0_0_0".dir   = "v0_0_0";
  inputs."sitmo-v0_0_0".owner = "nim-nix-pkgs";
  inputs."sitmo-v0_0_0".ref   = "master";
  inputs."sitmo-v0_0_0".repo  = "sitmo";
  inputs."sitmo-v0_0_0".type  = "github";
  inputs."sitmo-v0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-v0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sitmo-v0_0_1".dir   = "v0_0_1";
  inputs."sitmo-v0_0_1".owner = "nim-nix-pkgs";
  inputs."sitmo-v0_0_1".ref   = "master";
  inputs."sitmo-v0_0_1".repo  = "sitmo";
  inputs."sitmo-v0_0_1".type  = "github";
  inputs."sitmo-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sitmo-v0_0_2".dir   = "v0_0_2";
  inputs."sitmo-v0_0_2".owner = "nim-nix-pkgs";
  inputs."sitmo-v0_0_2".ref   = "master";
  inputs."sitmo-v0_0_2".repo  = "sitmo";
  inputs."sitmo-v0_0_2".type  = "github";
  inputs."sitmo-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sitmo-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
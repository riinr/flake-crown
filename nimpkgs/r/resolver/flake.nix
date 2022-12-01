{
  description = ''Semver parser and dependency management tools'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."resolver-devel".dir   = "devel";
  inputs."resolver-devel".owner = "nim-nix-pkgs";
  inputs."resolver-devel".ref   = "master";
  inputs."resolver-devel".repo  = "resolver";
  inputs."resolver-devel".type  = "github";
  inputs."resolver-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resolver-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."resolver-master".dir   = "master";
  inputs."resolver-master".owner = "nim-nix-pkgs";
  inputs."resolver-master".ref   = "master";
  inputs."resolver-master".repo  = "resolver";
  inputs."resolver-master".type  = "github";
  inputs."resolver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resolver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."resolver-v0_1_0".dir   = "v0_1_0";
  inputs."resolver-v0_1_0".owner = "nim-nix-pkgs";
  inputs."resolver-v0_1_0".ref   = "master";
  inputs."resolver-v0_1_0".repo  = "resolver";
  inputs."resolver-v0_1_0".type  = "github";
  inputs."resolver-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resolver-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."resolver-v0_2_0".dir   = "v0_2_0";
  inputs."resolver-v0_2_0".owner = "nim-nix-pkgs";
  inputs."resolver-v0_2_0".ref   = "master";
  inputs."resolver-v0_2_0".repo  = "resolver";
  inputs."resolver-v0_2_0".type  = "github";
  inputs."resolver-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."resolver-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
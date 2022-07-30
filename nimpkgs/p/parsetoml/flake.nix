{
  description = ''Library for parsing TOML files.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parsetoml-devel".dir   = "devel";
  inputs."parsetoml-devel".owner = "nim-nix-pkgs";
  inputs."parsetoml-devel".ref   = "master";
  inputs."parsetoml-devel".repo  = "parsetoml";
  inputs."parsetoml-devel".type  = "github";
  inputs."parsetoml-devel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml-devel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml-master".dir   = "master";
  inputs."parsetoml-master".owner = "nim-nix-pkgs";
  inputs."parsetoml-master".ref   = "master";
  inputs."parsetoml-master".repo  = "parsetoml";
  inputs."parsetoml-master".type  = "github";
  inputs."parsetoml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml-v0_4_0".dir   = "v0_4_0";
  inputs."parsetoml-v0_4_0".owner = "nim-nix-pkgs";
  inputs."parsetoml-v0_4_0".ref   = "master";
  inputs."parsetoml-v0_4_0".repo  = "parsetoml";
  inputs."parsetoml-v0_4_0".type  = "github";
  inputs."parsetoml-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml-v0_5_0".dir   = "v0_5_0";
  inputs."parsetoml-v0_5_0".owner = "nim-nix-pkgs";
  inputs."parsetoml-v0_5_0".ref   = "master";
  inputs."parsetoml-v0_5_0".repo  = "parsetoml";
  inputs."parsetoml-v0_5_0".type  = "github";
  inputs."parsetoml-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml-v0_6_0".dir   = "v0_6_0";
  inputs."parsetoml-v0_6_0".owner = "nim-nix-pkgs";
  inputs."parsetoml-v0_6_0".ref   = "master";
  inputs."parsetoml-v0_6_0".repo  = "parsetoml";
  inputs."parsetoml-v0_6_0".type  = "github";
  inputs."parsetoml-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
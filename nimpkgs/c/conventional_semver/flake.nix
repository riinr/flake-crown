{
  description = ''Calculate the next semver version given the git log and previous version'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."conventional_semver-master".url = "path:./master";
  inputs."conventional_semver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."conventional_semver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."conventional_semver-0_1_0".url = "path:./0_1_0";
  inputs."conventional_semver-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."conventional_semver-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."conventional_semver-0_2_0".url = "path:./0_2_0";
  inputs."conventional_semver-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."conventional_semver-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
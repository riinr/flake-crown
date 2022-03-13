{
  description = ''A library to retrieve the list of commonly used licenses from the SPDX License List.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spdx_licenses-master".dir   = "master";
  inputs."spdx_licenses-master".owner = "nim-nix-pkgs";
  inputs."spdx_licenses-master".ref   = "master";
  inputs."spdx_licenses-master".repo  = "spdx_licenses";
  inputs."spdx_licenses-master".type  = "github";
  inputs."spdx_licenses-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spdx_licenses-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spdx_licenses-v1_0_0".dir   = "v1_0_0";
  inputs."spdx_licenses-v1_0_0".owner = "nim-nix-pkgs";
  inputs."spdx_licenses-v1_0_0".ref   = "master";
  inputs."spdx_licenses-v1_0_0".repo  = "spdx_licenses";
  inputs."spdx_licenses-v1_0_0".type  = "github";
  inputs."spdx_licenses-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spdx_licenses-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''A Nim library to create and manage temporary directories.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."tempdir-master".dir   = "master";
  inputs."tempdir-master".owner = "nim-nix-pkgs";
  inputs."tempdir-master".ref   = "master";
  inputs."tempdir-master".repo  = "tempdir";
  inputs."tempdir-master".type  = "github";
  inputs."tempdir-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempdir-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempdir-v1_0_0".dir   = "v1_0_0";
  inputs."tempdir-v1_0_0".owner = "nim-nix-pkgs";
  inputs."tempdir-v1_0_0".ref   = "master";
  inputs."tempdir-v1_0_0".repo  = "tempdir";
  inputs."tempdir-v1_0_0".type  = "github";
  inputs."tempdir-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempdir-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempdir-v1_0_1".dir   = "v1_0_1";
  inputs."tempdir-v1_0_1".owner = "nim-nix-pkgs";
  inputs."tempdir-v1_0_1".ref   = "master";
  inputs."tempdir-v1_0_1".repo  = "tempdir";
  inputs."tempdir-v1_0_1".type  = "github";
  inputs."tempdir-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempdir-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Distances is a high performance Nim library for calculating distances.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."distances-master".dir   = "master";
  inputs."distances-master".owner = "nim-nix-pkgs";
  inputs."distances-master".ref   = "master";
  inputs."distances-master".repo  = "distances";
  inputs."distances-master".type  = "github";
  inputs."distances-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distances-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."distances-v0_1_0".dir   = "v0_1_0";
  inputs."distances-v0_1_0".owner = "nim-nix-pkgs";
  inputs."distances-v0_1_0".ref   = "master";
  inputs."distances-v0_1_0".repo  = "distances";
  inputs."distances-v0_1_0".type  = "github";
  inputs."distances-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distances-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."distances-v0_1_1".dir   = "v0_1_1";
  inputs."distances-v0_1_1".owner = "nim-nix-pkgs";
  inputs."distances-v0_1_1".ref   = "master";
  inputs."distances-v0_1_1".repo  = "distances";
  inputs."distances-v0_1_1".type  = "github";
  inputs."distances-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."distances-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
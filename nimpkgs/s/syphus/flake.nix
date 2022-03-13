{
  description = ''An implementation of the tabu search heuristic in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."syphus-master".dir   = "master";
  inputs."syphus-master".owner = "nim-nix-pkgs";
  inputs."syphus-master".ref   = "master";
  inputs."syphus-master".repo  = "syphus";
  inputs."syphus-master".type  = "github";
  inputs."syphus-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syphus-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."syphus-0_4".dir   = "0_4";
  inputs."syphus-0_4".owner = "nim-nix-pkgs";
  inputs."syphus-0_4".ref   = "master";
  inputs."syphus-0_4".repo  = "syphus";
  inputs."syphus-0_4".type  = "github";
  inputs."syphus-0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."syphus-0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
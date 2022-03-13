{
  description = ''Dimensionful types and dimensional analysis.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."metric-master".dir   = "master";
  inputs."metric-master".owner = "nim-nix-pkgs";
  inputs."metric-master".ref   = "master";
  inputs."metric-master".repo  = "metric";
  inputs."metric-master".type  = "github";
  inputs."metric-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metric-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."metric-v0_1_0".dir   = "v0_1_0";
  inputs."metric-v0_1_0".owner = "nim-nix-pkgs";
  inputs."metric-v0_1_0".ref   = "master";
  inputs."metric-v0_1_0".repo  = "metric";
  inputs."metric-v0_1_0".type  = "github";
  inputs."metric-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."metric-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
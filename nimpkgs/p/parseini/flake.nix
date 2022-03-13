{
  description = ''A high-performance ini parse library for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parseini-master".dir   = "master";
  inputs."parseini-master".owner = "nim-nix-pkgs";
  inputs."parseini-master".ref   = "master";
  inputs."parseini-master".repo  = "parseini";
  inputs."parseini-master".type  = "github";
  inputs."parseini-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parseini-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parseini-0_1_0".dir   = "0_1_0";
  inputs."parseini-0_1_0".owner = "nim-nix-pkgs";
  inputs."parseini-0_1_0".ref   = "master";
  inputs."parseini-0_1_0".repo  = "parseini";
  inputs."parseini-0_1_0".type  = "github";
  inputs."parseini-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parseini-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parseini-0_2_0".dir   = "0_2_0";
  inputs."parseini-0_2_0".owner = "nim-nix-pkgs";
  inputs."parseini-0_2_0".ref   = "master";
  inputs."parseini-0_2_0".repo  = "parseini";
  inputs."parseini-0_2_0".type  = "github";
  inputs."parseini-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parseini-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
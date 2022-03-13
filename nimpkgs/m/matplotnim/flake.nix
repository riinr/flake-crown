{
  description = ''A Nim wrapper for Python's matplotlib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."matplotnim-master".dir   = "master";
  inputs."matplotnim-master".owner = "nim-nix-pkgs";
  inputs."matplotnim-master".ref   = "master";
  inputs."matplotnim-master".repo  = "matplotnim";
  inputs."matplotnim-master".type  = "github";
  inputs."matplotnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matplotnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matplotnim-v0_1_0".dir   = "v0_1_0";
  inputs."matplotnim-v0_1_0".owner = "nim-nix-pkgs";
  inputs."matplotnim-v0_1_0".ref   = "master";
  inputs."matplotnim-v0_1_0".repo  = "matplotnim";
  inputs."matplotnim-v0_1_0".type  = "github";
  inputs."matplotnim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matplotnim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."matplotnim-v0_2_0".dir   = "v0_2_0";
  inputs."matplotnim-v0_2_0".owner = "nim-nix-pkgs";
  inputs."matplotnim-v0_2_0".ref   = "master";
  inputs."matplotnim-v0_2_0".repo  = "matplotnim";
  inputs."matplotnim-v0_2_0".type  = "github";
  inputs."matplotnim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."matplotnim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
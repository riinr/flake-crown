{
  description = ''Go-like interfaces'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."interfaced-master".dir   = "master";
  inputs."interfaced-master".owner = "nim-nix-pkgs";
  inputs."interfaced-master".ref   = "master";
  inputs."interfaced-master".repo  = "interfaced";
  inputs."interfaced-master".type  = "github";
  inputs."interfaced-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interfaced-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."interfaced-0_1_0".dir   = "0_1_0";
  inputs."interfaced-0_1_0".owner = "nim-nix-pkgs";
  inputs."interfaced-0_1_0".ref   = "master";
  inputs."interfaced-0_1_0".repo  = "interfaced";
  inputs."interfaced-0_1_0".type  = "github";
  inputs."interfaced-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interfaced-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."interfaced-0_2_0".dir   = "0_2_0";
  inputs."interfaced-0_2_0".owner = "nim-nix-pkgs";
  inputs."interfaced-0_2_0".ref   = "master";
  inputs."interfaced-0_2_0".repo  = "interfaced";
  inputs."interfaced-0_2_0".type  = "github";
  inputs."interfaced-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."interfaced-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
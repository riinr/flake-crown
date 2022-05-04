{
  description = ''Nim to GPU shader language compiler and supporting utilities.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shady-master".dir   = "master";
  inputs."shady-master".owner = "nim-nix-pkgs";
  inputs."shady-master".ref   = "master";
  inputs."shady-master".repo  = "shady";
  inputs."shady-master".type  = "github";
  inputs."shady-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shady-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shady-0_0_1".dir   = "0_0_1";
  inputs."shady-0_0_1".owner = "nim-nix-pkgs";
  inputs."shady-0_0_1".ref   = "master";
  inputs."shady-0_0_1".repo  = "shady";
  inputs."shady-0_0_1".type  = "github";
  inputs."shady-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shady-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shady-0_1_0".dir   = "0_1_0";
  inputs."shady-0_1_0".owner = "nim-nix-pkgs";
  inputs."shady-0_1_0".ref   = "master";
  inputs."shady-0_1_0".repo  = "shady";
  inputs."shady-0_1_0".type  = "github";
  inputs."shady-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shady-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
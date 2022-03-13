{
  description = ''Simple reallocating vector'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."vector-master".dir   = "master";
  inputs."vector-master".owner = "nim-nix-pkgs";
  inputs."vector-master".ref   = "master";
  inputs."vector-master".repo  = "vector";
  inputs."vector-master".type  = "github";
  inputs."vector-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vector-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vector-v0_1_0".dir   = "v0_1_0";
  inputs."vector-v0_1_0".owner = "nim-nix-pkgs";
  inputs."vector-v0_1_0".ref   = "master";
  inputs."vector-v0_1_0".repo  = "vector";
  inputs."vector-v0_1_0".type  = "github";
  inputs."vector-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vector-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vector-v0_1_1".dir   = "v0_1_1";
  inputs."vector-v0_1_1".owner = "nim-nix-pkgs";
  inputs."vector-v0_1_1".ref   = "master";
  inputs."vector-v0_1_1".repo  = "vector";
  inputs."vector-v0_1_1".type  = "github";
  inputs."vector-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vector-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
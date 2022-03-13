{
  description = ''Z3 binding for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."z3nim-master".dir   = "master";
  inputs."z3nim-master".owner = "nim-nix-pkgs";
  inputs."z3nim-master".ref   = "master";
  inputs."z3nim-master".repo  = "z3nim";
  inputs."z3nim-master".type  = "github";
  inputs."z3nim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3nim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3nim-v0_1_0".dir   = "v0_1_0";
  inputs."z3nim-v0_1_0".owner = "nim-nix-pkgs";
  inputs."z3nim-v0_1_0".ref   = "master";
  inputs."z3nim-v0_1_0".repo  = "z3nim";
  inputs."z3nim-v0_1_0".type  = "github";
  inputs."z3nim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3nim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
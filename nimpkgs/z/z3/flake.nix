{
  description = ''Nim Z3 theorem prover bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."z3-master".dir   = "master";
  inputs."z3-master".owner = "nim-nix-pkgs";
  inputs."z3-master".ref   = "master";
  inputs."z3-master".repo  = "z3";
  inputs."z3-master".type  = "github";
  inputs."z3-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3-v0_1_0".dir   = "v0_1_0";
  inputs."z3-v0_1_0".owner = "nim-nix-pkgs";
  inputs."z3-v0_1_0".ref   = "master";
  inputs."z3-v0_1_0".repo  = "z3";
  inputs."z3-v0_1_0".type  = "github";
  inputs."z3-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3-v0_1_1".dir   = "v0_1_1";
  inputs."z3-v0_1_1".owner = "nim-nix-pkgs";
  inputs."z3-v0_1_1".ref   = "master";
  inputs."z3-v0_1_1".repo  = "z3";
  inputs."z3-v0_1_1".type  = "github";
  inputs."z3-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3-v0_1_2".dir   = "v0_1_2";
  inputs."z3-v0_1_2".owner = "nim-nix-pkgs";
  inputs."z3-v0_1_2".ref   = "master";
  inputs."z3-v0_1_2".repo  = "z3";
  inputs."z3-v0_1_2".type  = "github";
  inputs."z3-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3-v0_1_3".dir   = "v0_1_3";
  inputs."z3-v0_1_3".owner = "nim-nix-pkgs";
  inputs."z3-v0_1_3".ref   = "master";
  inputs."z3-v0_1_3".repo  = "z3";
  inputs."z3-v0_1_3".type  = "github";
  inputs."z3-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."z3-v0_1_4".dir   = "v0_1_4";
  inputs."z3-v0_1_4".owner = "nim-nix-pkgs";
  inputs."z3-v0_1_4".ref   = "master";
  inputs."z3-v0_1_4".repo  = "z3";
  inputs."z3-v0_1_4".type  = "github";
  inputs."z3-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."z3-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
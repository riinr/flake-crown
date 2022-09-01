{
  description = ''A simple code generation library for other programming languages!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."codegenlib-master".dir   = "master";
  inputs."codegenlib-master".owner = "nim-nix-pkgs";
  inputs."codegenlib-master".ref   = "master";
  inputs."codegenlib-master".repo  = "codegenlib";
  inputs."codegenlib-master".type  = "github";
  inputs."codegenlib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_0_0".dir   = "v1_0_0";
  inputs."codegenlib-v1_0_0".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_0_0".ref   = "master";
  inputs."codegenlib-v1_0_0".repo  = "codegenlib";
  inputs."codegenlib-v1_0_0".type  = "github";
  inputs."codegenlib-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."codegenlib-v1_0_1".dir   = "v1_0_1";
  inputs."codegenlib-v1_0_1".owner = "nim-nix-pkgs";
  inputs."codegenlib-v1_0_1".ref   = "master";
  inputs."codegenlib-v1_0_1".repo  = "codegenlib";
  inputs."codegenlib-v1_0_1".type  = "github";
  inputs."codegenlib-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."codegenlib-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
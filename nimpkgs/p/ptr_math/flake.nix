{
  description = ''Pointer arithmetic library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ptr_math-main".dir   = "main";
  inputs."ptr_math-main".owner = "nim-nix-pkgs";
  inputs."ptr_math-main".ref   = "master";
  inputs."ptr_math-main".repo  = "ptr_math";
  inputs."ptr_math-main".type  = "github";
  inputs."ptr_math-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptr_math-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptr_math-v0_0_1".dir   = "v0_0_1";
  inputs."ptr_math-v0_0_1".owner = "nim-nix-pkgs";
  inputs."ptr_math-v0_0_1".ref   = "master";
  inputs."ptr_math-v0_0_1".repo  = "ptr_math";
  inputs."ptr_math-v0_0_1".type  = "github";
  inputs."ptr_math-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptr_math-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptr_math-v0_2_0".dir   = "v0_2_0";
  inputs."ptr_math-v0_2_0".owner = "nim-nix-pkgs";
  inputs."ptr_math-v0_2_0".ref   = "master";
  inputs."ptr_math-v0_2_0".repo  = "ptr_math";
  inputs."ptr_math-v0_2_0".type  = "github";
  inputs."ptr_math-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptr_math-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ptr_math-v0_3_0".dir   = "v0_3_0";
  inputs."ptr_math-v0_3_0".owner = "nim-nix-pkgs";
  inputs."ptr_math-v0_3_0".ref   = "master";
  inputs."ptr_math-v0_3_0".repo  = "ptr_math";
  inputs."ptr_math-v0_3_0".type  = "github";
  inputs."ptr_math-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ptr_math-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
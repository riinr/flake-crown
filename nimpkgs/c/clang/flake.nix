{
  description = ''Wrapper for libclang C headers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."clang-develop".dir   = "develop";
  inputs."clang-develop".owner = "nim-nix-pkgs";
  inputs."clang-develop".ref   = "master";
  inputs."clang-develop".repo  = "clang";
  inputs."clang-develop".type  = "github";
  inputs."clang-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clang-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clang-v0_59".dir   = "v0_59";
  inputs."clang-v0_59".owner = "nim-nix-pkgs";
  inputs."clang-v0_59".ref   = "master";
  inputs."clang-v0_59".repo  = "clang";
  inputs."clang-v0_59".type  = "github";
  inputs."clang-v0_59".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clang-v0_59".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
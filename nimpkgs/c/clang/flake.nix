{
  description = ''Wrapper for libclang C headers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."clang-develop".url = "path:./develop";
  inputs."clang-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clang-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clang-v0_59".url = "path:./v0_59";
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
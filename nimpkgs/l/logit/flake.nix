{
  description = ''Dependency-free, cross-platform and small logging library for Nim, with a simple and comfortable API'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."logit-main".url = "path:./main";
  inputs."logit-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logit-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logit-v0_1_0".url = "path:./v0_1_0";
  inputs."logit-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logit-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logit-v0_1_1".url = "path:./v0_1_1";
  inputs."logit-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logit-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logit-v0_1_2".url = "path:./v0_1_2";
  inputs."logit-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logit-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
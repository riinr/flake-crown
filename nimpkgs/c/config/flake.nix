{
  description = ''A library for working with the CFG configuration format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."config-main".url = "path:./main";
  inputs."config-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."config-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."config-0_1_0".url = "path:./0_1_0";
  inputs."config-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."config-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."config-0_1_1".url = "path:./0_1_1";
  inputs."config-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."config-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
{
  description = ''A simple TLDR pages client'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mt-main".url = "path:./main";
  inputs."mt-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mt-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mt-0_1_0".url = "path:./0_1_0";
  inputs."mt-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mt-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mt-0_1_1".url = "path:./0_1_1";
  inputs."mt-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mt-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mt-0_2_0".url = "path:./0_2_0";
  inputs."mt-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mt-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
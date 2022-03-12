{
  description = ''a collection of useful macro functionalities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."macroplus-main".url = "path:./main";
  inputs."macroplus-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroplus-0_1_17".url = "path:./0_1_17";
  inputs."macroplus-0_1_17".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus-0_1_17".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroplus-0_1_20".url = "path:./0_1_20";
  inputs."macroplus-0_1_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus-0_1_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroplus-0_1_22".url = "path:./0_1_22";
  inputs."macroplus-0_1_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus-0_1_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
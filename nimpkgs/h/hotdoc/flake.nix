{
  description = ''Single Page Documentation Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hotdoc-main".url = "path:./main";
  inputs."hotdoc-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hotdoc-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hotdoc-0_1_0".url = "path:./0_1_0";
  inputs."hotdoc-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hotdoc-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
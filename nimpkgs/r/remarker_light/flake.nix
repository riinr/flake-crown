{
  description = ''remarker_light is a command line tool for building a remark-based slideshow page very easily.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."remarker_light-master".url = "path:./master";
  inputs."remarker_light-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."remarker_light-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."remarker_light-1_0_0".url = "path:./1_0_0";
  inputs."remarker_light-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."remarker_light-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."remarker_light-1_0_1".url = "path:./1_0_1";
  inputs."remarker_light-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."remarker_light-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
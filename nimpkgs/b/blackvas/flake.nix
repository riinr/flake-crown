{
  description = ''declarative UI framework for building Canvas'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."blackvas-master".url = "path:./master";
  inputs."blackvas-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blackvas-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."blackvas-0_1_0".url = "path:./0_1_0";
  inputs."blackvas-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blackvas-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."blackvas-0_2_0".url = "path:./0_2_0";
  inputs."blackvas-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."blackvas-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
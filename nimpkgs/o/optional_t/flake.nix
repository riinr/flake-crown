{
  description = ''Basic Option[T] library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."optional_t-master".url = "path:./master";
  inputs."optional_t-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optional_t-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optional_t-1_0_0".url = "path:./1_0_0";
  inputs."optional_t-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optional_t-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optional_t-1_1_0".url = "path:./1_1_0";
  inputs."optional_t-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optional_t-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."optional_t-1_2_0".url = "path:./1_2_0";
  inputs."optional_t-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optional_t-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
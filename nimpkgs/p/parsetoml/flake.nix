{
  description = ''Library for parsing TOML files.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parsetoml-master".url = "path:./master";
  inputs."parsetoml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml-v0_4_0".url = "path:./v0_4_0";
  inputs."parsetoml-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml-v0_5_0".url = "path:./v0_5_0";
  inputs."parsetoml-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml-v0_6_0".url = "path:./v0_6_0";
  inputs."parsetoml-v0_6_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml-v0_6_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
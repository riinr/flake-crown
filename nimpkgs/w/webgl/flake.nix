{
  description = ''Experimental wrapper to webgl for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."webgl-master".url = "path:./master";
  inputs."webgl-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgl-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgl-0_1_0".url = "path:./0_1_0";
  inputs."webgl-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgl-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgl-0_1_2".url = "path:./0_1_2";
  inputs."webgl-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgl-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgl-0_2_0".url = "path:./0_2_0";
  inputs."webgl-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgl-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webgl-0_2_1".url = "path:./0_2_1";
  inputs."webgl-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webgl-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
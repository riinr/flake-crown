{
  description = ''Bindings for Miniz lib.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."miniz-master".url = "path:./master";
  inputs."miniz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miniz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."miniz-0_1_0".url = "path:./0_1_0";
  inputs."miniz-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miniz-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."miniz-0_2_0".url = "path:./0_2_0";
  inputs."miniz-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miniz-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."miniz-v0_1_0".url = "path:./v0_1_0";
  inputs."miniz-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."miniz-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
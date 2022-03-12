{
  description = ''Nim Static Blog & Site Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pine-master".url = "path:./master";
  inputs."pine-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pine-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pine-v0_1_0".url = "path:./v0_1_0";
  inputs."pine-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pine-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pine-v0_1_1".url = "path:./v0_1_1";
  inputs."pine-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pine-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pine-v0_1_2".url = "path:./v0_1_2";
  inputs."pine-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pine-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pine-v0_2_0".url = "path:./v0_2_0";
  inputs."pine-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pine-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''a state-of-the-art multithreading runtime'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."weave-master".url = "path:./master";
  inputs."weave-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."weave-v0_1_0".url = "path:./v0_1_0";
  inputs."weave-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."weave-v0_2_0".url = "path:./v0_2_0";
  inputs."weave-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."weave-v0_3_0".url = "path:./v0_3_0";
  inputs."weave-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."weave-v0_4_0".url = "path:./v0_4_0";
  inputs."weave-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."weave-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
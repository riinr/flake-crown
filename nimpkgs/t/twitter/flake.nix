{
  description = ''Low-level twitter API wrapper library for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."twitter-master".url = "path:./master";
  inputs."twitter-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."twitter-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."twitter-1_0_0".url = "path:./1_0_0";
  inputs."twitter-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."twitter-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."twitter-1_0_1".url = "path:./1_0_1";
  inputs."twitter-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."twitter-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Wrapper around the open trivia db api'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."opentdb-master".url = "path:./master";
  inputs."opentdb-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opentdb-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opentdb-1_1_0".url = "path:./1_1_0";
  inputs."opentdb-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opentdb-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opentdb-1_1_1".url = "path:./1_1_1";
  inputs."opentdb-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opentdb-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opentdb-v1_0_2".url = "path:./v1_0_2";
  inputs."opentdb-v1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opentdb-v1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
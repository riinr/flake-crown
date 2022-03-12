{
  description = ''Google API for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."googleapi-master".url = "path:./master";
  inputs."googleapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-0_1_0".url = "path:./0_1_0";
  inputs."googleapi-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-0_1_1".url = "path:./0_1_1";
  inputs."googleapi-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-0_1_2".url = "path:./0_1_2";
  inputs."googleapi-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-0_1_3".url = "path:./0_1_3";
  inputs."googleapi-0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-0_1_4".url = "path:./0_1_4";
  inputs."googleapi-0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi-v0_1_0".url = "path:./v0_1_0";
  inputs."googleapi-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
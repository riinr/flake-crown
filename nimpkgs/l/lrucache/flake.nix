{
  description = ''Least recently used (LRU) cache'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lrucache-master".url = "path:./master";
  inputs."lrucache-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_0_0".url = "path:./1_0_0";
  inputs."lrucache-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_0_1".url = "path:./1_0_1";
  inputs."lrucache-1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_0_2".url = "path:./1_0_2";
  inputs."lrucache-1_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_0_3".url = "path:./1_0_3";
  inputs."lrucache-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_0_4".url = "path:./1_0_4";
  inputs."lrucache-1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_1_0".url = "path:./1_1_0";
  inputs."lrucache-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_1_1".url = "path:./1_1_1";
  inputs."lrucache-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_1_2".url = "path:./1_1_2";
  inputs."lrucache-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_1_3".url = "path:./1_1_3";
  inputs."lrucache-1_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lrucache-1_1_4".url = "path:./1_1_4";
  inputs."lrucache-1_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lrucache-1_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
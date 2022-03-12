{
  description = ''The Nim bindings for linksplatform/Data.Triplets.Kernel.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."triplets-master".url = "path:./master";
  inputs."triplets-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_1".url = "path:./0_0_1";
  inputs."triplets-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_2".url = "path:./0_0_2";
  inputs."triplets-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_3".url = "path:./0_0_3";
  inputs."triplets-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_4".url = "path:./0_0_4";
  inputs."triplets-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_5".url = "path:./0_0_5";
  inputs."triplets-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_6".url = "path:./0_0_6";
  inputs."triplets-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_0_7".url = "path:./0_0_7";
  inputs."triplets-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_1_0".url = "path:./0_1_0";
  inputs."triplets-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."triplets-0_1_1".url = "path:./0_1_1";
  inputs."triplets-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."triplets-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Command line tools for Prologue.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."logue-master".url = "path:./master";
  inputs."logue-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_1_0".url = "path:./v0_1_0";
  inputs."logue-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_1_2".url = "path:./v0_1_2";
  inputs."logue-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_1_6".url = "path:./v0_1_6";
  inputs."logue-v0_1_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_1_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_1_8".url = "path:./v0_1_8";
  inputs."logue-v0_1_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_1_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_2_0".url = "path:./v0_2_0";
  inputs."logue-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_2_2".url = "path:./v0_2_2";
  inputs."logue-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue-v0_2_4".url = "path:./v0_2_4";
  inputs."logue-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
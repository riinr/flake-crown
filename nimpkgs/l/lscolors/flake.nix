{
  description = ''A library for colorizing paths according to LS_COLORS'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lscolors-master".url = "path:./master";
  inputs."lscolors-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_1_0".url = "path:./v0_1_0";
  inputs."lscolors-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_2_0".url = "path:./v0_2_0";
  inputs."lscolors-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_2_1".url = "path:./v0_2_1";
  inputs."lscolors-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_2_2".url = "path:./v0_2_2";
  inputs."lscolors-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_3_0".url = "path:./v0_3_0";
  inputs."lscolors-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_3_1".url = "path:./v0_3_1";
  inputs."lscolors-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_3_2".url = "path:./v0_3_2";
  inputs."lscolors-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors-v0_3_3".url = "path:./v0_3_3";
  inputs."lscolors-v0_3_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors-v0_3_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
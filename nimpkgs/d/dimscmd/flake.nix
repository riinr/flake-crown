{
  description = ''A command handler for the dimscord discord library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dimscmd-master".url = "path:./master";
  inputs."dimscmd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-0_2_0".url = "path:./0_2_0";
  inputs."dimscmd-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-0_2_1".url = "path:./0_2_1";
  inputs."dimscmd-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_0_0".url = "path:./1_0_0";
  inputs."dimscmd-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_1_0".url = "path:./1_1_0";
  inputs."dimscmd-1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_1_1".url = "path:./1_1_1";
  inputs."dimscmd-1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_1_2".url = "path:./1_1_2";
  inputs."dimscmd-1_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_2_0".url = "path:./1_2_0";
  inputs."dimscmd-1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_2_1".url = "path:./1_2_1";
  inputs."dimscmd-1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_2_2".url = "path:./1_2_2";
  inputs."dimscmd-1_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_3_0".url = "path:./1_3_0";
  inputs."dimscmd-1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dimscmd-1_3_1".url = "path:./1_3_1";
  inputs."dimscmd-1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscmd-1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
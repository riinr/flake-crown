{
  description = ''A Nim wrapper for TheBlueAlliance'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."the_nim_alliance-master".url = "path:./master";
  inputs."the_nim_alliance-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."the_nim_alliance-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."the_nim_alliance-v0_1_0".url = "path:./v0_1_0";
  inputs."the_nim_alliance-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."the_nim_alliance-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."the_nim_alliance-v0_1_1".url = "path:./v0_1_1";
  inputs."the_nim_alliance-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."the_nim_alliance-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."the_nim_alliance-v0_1_2".url = "path:./v0_1_2";
  inputs."the_nim_alliance-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."the_nim_alliance-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."the_nim_alliance-v0_1_3".url = "path:./v0_1_3";
  inputs."the_nim_alliance-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."the_nim_alliance-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."the_nim_alliance-v0_1_4".url = "path:./v0_1_4";
  inputs."the_nim_alliance-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."the_nim_alliance-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
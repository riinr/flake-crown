{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpng-master".url = "path:./master";
  inputs."nimpng-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-0_2_7".url = "path:./0_2_7";
  inputs."nimpng-0_2_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-0_2_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-0_3_0".url = "path:./0_3_0";
  inputs."nimpng-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-v0_2_5".url = "path:./v0_2_5";
  inputs."nimpng-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-v0_2_6".url = "path:./v0_2_6";
  inputs."nimpng-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng-v0_3_1".url = "path:./v0_3_1";
  inputs."nimpng-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
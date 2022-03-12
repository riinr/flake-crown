{
  description = ''Trait system for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimtraits-master".url = "path:./master";
  inputs."nimtraits-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtraits-v0_1_2".url = "path:./v0_1_2";
  inputs."nimtraits-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtraits-v0_1_3".url = "path:./v0_1_3";
  inputs."nimtraits-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtraits-v0_1_4".url = "path:./v0_1_4";
  inputs."nimtraits-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimtraits-v0_1_5".url = "path:./v0_1_5";
  inputs."nimtraits-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
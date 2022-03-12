{
  description = ''Master Password command line utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mpwc-master".url = "path:./master";
  inputs."mpwc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpwc-v0_1_0".url = "path:./v0_1_0";
  inputs."mpwc-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpwc-v0_1_1".url = "path:./v0_1_1";
  inputs."mpwc-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpwc-v0_1_2".url = "path:./v0_1_2";
  inputs."mpwc-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mpwc-v0_1_3".url = "path:./v0_1_3";
  inputs."mpwc-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mpwc-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
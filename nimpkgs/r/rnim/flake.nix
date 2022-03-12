{
  description = ''A bridge between R and Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rnim-master".url = "path:./master";
  inputs."rnim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rnim-v0_1_1".url = "path:./v0_1_1";
  inputs."rnim-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rnim-v0_1_2".url = "path:./v0_1_2";
  inputs."rnim-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rnim-v0_1_3".url = "path:./v0_1_3";
  inputs."rnim-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rnim-v0_1_4".url = "path:./v0_1_4";
  inputs."rnim-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rnim-v0_1_5".url = "path:./v0_1_5";
  inputs."rnim-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rnim-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
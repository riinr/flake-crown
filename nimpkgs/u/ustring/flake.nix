{
  description = ''utf-8 string'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ustring-master".url = "path:./master";
  inputs."ustring-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ustring-0_2_1".url = "path:./0_2_1";
  inputs."ustring-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ustring-0_2_2".url = "path:./0_2_2";
  inputs."ustring-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ustring-0_2_3".url = "path:./0_2_3";
  inputs."ustring-0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ustring-0_3_0".url = "path:./0_3_0";
  inputs."ustring-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ustring-3_0_0".url = "path:./3_0_0";
  inputs."ustring-3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ustring-3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
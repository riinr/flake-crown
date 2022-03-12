{
  description = ''7z extraction for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim7z-master".url = "path:./master";
  inputs."nim7z-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim7z-v0_1_1".url = "path:./v0_1_1";
  inputs."nim7z-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim7z-v0_1_2".url = "path:./v0_1_2";
  inputs."nim7z-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim7z-v0_1_3".url = "path:./v0_1_3";
  inputs."nim7z-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim7z-v0_1_4".url = "path:./v0_1_4";
  inputs."nim7z-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim7z-v0_1_5".url = "path:./v0_1_5";
  inputs."nim7z-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim7z-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
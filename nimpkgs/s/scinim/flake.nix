{
  description = ''The core types and functions of the SciNim ecosystem'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."scinim-main".url = "path:./main";
  inputs."scinim-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scinim-v0_1_0".url = "path:./v0_1_0";
  inputs."scinim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scinim-v0_2_2".url = "path:./v0_2_2";
  inputs."scinim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scinim-v0_2_3".url = "path:./v0_2_3";
  inputs."scinim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scinim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
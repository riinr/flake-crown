{
  description = ''fs memory zip finder implement in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."finder-master".url = "path:./master";
  inputs."finder-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."finder-v0_1_1".url = "path:./v0_1_1";
  inputs."finder-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."finder-v0_2_0".url = "path:./v0_2_0";
  inputs."finder-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
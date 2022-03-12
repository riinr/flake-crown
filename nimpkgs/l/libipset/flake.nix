{
  description = ''libipset wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libipset-master".url = "path:./master";
  inputs."libipset-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libipset-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libipset-0_0_1".url = "path:./0_0_1";
  inputs."libipset-0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libipset-0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libipset-0_0_2".url = "path:./0_0_2";
  inputs."libipset-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libipset-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
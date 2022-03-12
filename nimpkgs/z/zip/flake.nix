{
  description = ''A wrapper for the zip library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zip-master".url = "path:./master";
  inputs."zip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip-0_3_1".url = "path:./0_3_1";
  inputs."zip-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
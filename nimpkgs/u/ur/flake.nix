{
  description = ''A Universal Result macro/object that normalizes the information returned from a procedure'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ur-master".url = "path:./master";
  inputs."ur-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ur-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ur-v0_1_1".url = "path:./v0_1_1";
  inputs."ur-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ur-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''Simple Role-based Access Control Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rbac-master".url = "path:./master";
  inputs."rbac-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbac-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rbac-0_1_0".url = "path:./0_1_0";
  inputs."rbac-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rbac-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
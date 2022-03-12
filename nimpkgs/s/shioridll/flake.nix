{
  description = ''The SHIORI DLL interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."shioridll-master".url = "path:./master";
  inputs."shioridll-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shioridll-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shioridll-v1_0_0".url = "path:./v1_0_0";
  inputs."shioridll-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shioridll-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shioridll-v1_0_1".url = "path:./v1_0_1";
  inputs."shioridll-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shioridll-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shioridll-v2_0_0".url = "path:./v2_0_0";
  inputs."shioridll-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shioridll-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."shioridll-v3_0_0".url = "path:./v3_0_0";
  inputs."shioridll-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shioridll-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
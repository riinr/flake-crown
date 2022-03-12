{
  description = ''Nim interface for PRIMME: PReconditioned Iterative MultiMethod Eigensolver'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."primme-master".url = "path:./master";
  inputs."primme-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v0_0_0".url = "path:./v0_0_0";
  inputs."primme-v0_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v0_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v0_1_0".url = "path:./v0_1_0";
  inputs."primme-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v0_1_1".url = "path:./v0_1_1";
  inputs."primme-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v2_0_0".url = "path:./v2_0_0";
  inputs."primme-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v2_1_0".url = "path:./v2_1_0";
  inputs."primme-v2_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v2_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v2_1_1".url = "path:./v2_1_1";
  inputs."primme-v2_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v2_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."primme-v3_0_0".url = "path:./v3_0_0";
  inputs."primme-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."primme-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
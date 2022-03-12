{
  description = ''Preserves data model and serialization format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."preserves-v0_1_0".url = "path:./v0_1_0";
  inputs."preserves-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v0_2_0".url = "path:./v0_2_0";
  inputs."preserves-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v1_0_0".url = "path:./v1_0_0";
  inputs."preserves-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v1_1_0".url = "path:./v1_1_0";
  inputs."preserves-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v2_0_0".url = "path:./v2_0_0";
  inputs."preserves-v2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v3_0_0".url = "path:./v3_0_0";
  inputs."preserves-v3_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v3_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v3_0_1".url = "path:./v3_0_1";
  inputs."preserves-v3_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v3_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."preserves-v3_1_0".url = "path:./v3_1_0";
  inputs."preserves-v3_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."preserves-v3_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
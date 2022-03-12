{
  description = ''A nim wrapper for ArrayFire'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."arrayfirenim-master".url = "path:./master";
  inputs."arrayfirenim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arrayfirenim-v0_1_0".url = "path:./v0_1_0";
  inputs."arrayfirenim-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arrayfirenim-v0_2_0".url = "path:./v0_2_0";
  inputs."arrayfirenim-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arrayfirenim-v0_2_1".url = "path:./v0_2_1";
  inputs."arrayfirenim-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arrayfirenim-v0_2_2".url = "path:./v0_2_2";
  inputs."arrayfirenim-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."arrayfirenim-v0_2_3".url = "path:./v0_2_3";
  inputs."arrayfirenim-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."arrayfirenim-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
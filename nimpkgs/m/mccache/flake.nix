{
  description = ''mccache package: in-memory caching'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mccache-master".url = "path:./master";
  inputs."mccache-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mccache-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mccache-v0_1_1".url = "path:./v0_1_1";
  inputs."mccache-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mccache-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mccache-v0_1_2".url = "path:./v0_1_2";
  inputs."mccache-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mccache-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mccache-v0_2_0".url = "path:./v0_2_0";
  inputs."mccache-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mccache-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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